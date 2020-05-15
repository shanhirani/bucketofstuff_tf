variable "environment" {
  description = "Name of the environment i.e PROD, DEV or STAGING"
  default     = "development"
}
variable "aws_region" {
  type    = string
  default = "eu-west-2"
}
variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_dns_support" {
  type    = bool
  default = true
}
variable "vpc_dns_hostname" {
  type    = bool
  default = true
}
variable "vpc_classiclink" {
  type    = bool
  default = true
}
variable "vpc_instance_tenancy" {
  type    = bool
  default = true
}
variable "avail_zones" {
  description = "Availability Zones"
  type        = list(string)
  default     = ["eu-west-2a, eu-west-2b, eu-west-2c"]
}
variable "ami_id" {
  type = map(string)
  default = {
    eu-west-1 = "ami-07683a44e80cd32c5"
    eu-west-2 = "ami-09ead922c1dad67e4"
    eu-west-3 = "ami-0451ae4fd8dd178f7"
  }
}
variable "instance_count" {
  default = 2
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

