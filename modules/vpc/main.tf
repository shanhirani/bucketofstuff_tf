resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = var.vpc_dns_support
  enable_dns_hostnames = var.vpc_dns_hostname
  enable_classiclink   = var.vpc_classiclink
  instance_tenancy     = var.vpc_instance_tenancy

  tags = {
    name = "${var.environment}-vpc"
  }
}