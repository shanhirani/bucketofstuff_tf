variable "vpc_cidr" {
  description = "vpc cidr block"
  type        = string
  default     = "10.0.0.0/16"
}
variable "environment" {
  description = "name of the environment i.e prod, dev or staging"
  default     = ""
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