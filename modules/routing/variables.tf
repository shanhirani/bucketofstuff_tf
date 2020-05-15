variable "avail_zones" {
  description = "availability zones"
  type = "list"
}
variable "vpc_id" {}
variable "igw_id" {}
variable "natgw_id" {}
variable "environment" {}
variable "aws_region" {}
variable "subnet_public" {}
variable "subnet_private" {}