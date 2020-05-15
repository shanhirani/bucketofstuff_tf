### Terraform 

# Builds an EC2 Instance

module "ec2" {
  source = "./modules/ec2"

  subnets        = "module.subnets.subnet-id-private"
  securitygroups = "module.securitygroups.private-subnet-sg"
  aws_region     = "${var.aws_region}"
  instance_count = "${var.instance_count}"
  instance_type  = "${var.instance_type}"
  ami_id         = "${var.ami_id}"
  tags = {
    "name"        = "simple_instance"
    "environment" = "var.environment"
  }
}

module "igw" {
  source = "./modules/igw"
  vpc_id = "${module.vpc.vpc-id}"
}

module "natgw" {
  source = "./modules/natgw"

  avail_zones    = "${var.avail_zones}"
  igw_id         = "${module.igw.igw-id}"
  subnet_private = "${module.subnets.subnet-id-private}"
  environment    = "${var.environment}"

}

module "routing" {
  source = "./modules/routing"

  avail_zones    = "${var.avail_zones}"
  vpc_id         = "${module.vpc.vpc-id}"
  igw_id         = "${module.igw.igw-id}"
  natgw_id       = "${module.natgw.natgw-id}"
  environment    = "${var.environment}"
  aws_region     = "${var.aws_region}"
  subnet_public  = "${module.subnets.subnet-id-public}"
  subnet_private = "${module.subnets.subnet-id-private}"
}

# module "s3" {
#   source = "./modules/s3"
# }

module "securitygroups" {
  source = "./modules/securitygroups"

  vpc_id      = "${module.vpc.vpc-id}"
  environment = "${var.environment}"
}

module "subnets" {
  source = "./modules/subnets"

  avail_zones = "${var.avail_zones}"
  vpc_id      = "${module.vpc.vpc-id}"
  environment = "${var.environment}"
  vpc_cidr    = "${var.vpc_cidr}"
}

module "vpc" {
  source = "./modules/vpc"

}