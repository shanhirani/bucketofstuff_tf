# Common Settings

environment = "production"
aws_region  = "eu-west-2"

# VPC

vpc_cidr = "172.24.0.0/24"
avail_zone = ["eu-west-2a, eu-west-2b, eu-west-2c"]

# EC2 

instance_count = "3"
instance_type = "t3.micro"
ami_id =  {
    eu-west-1 = "ami-07683a44e80cd32c5"
    eu-west-2 = "ami-09ead922c1dad67e4"
    eu-west-3 = "ami-0451ae4fd8dd178f7"
  }
