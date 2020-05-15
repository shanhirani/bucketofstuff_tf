variable "instance_count" {}
variable "ami_id" {
  type = map(string)
}
variable "instance_type" {}
variable "subnets" {}
variable "securitygroups" {}
variable "aws_region" {}
variable "tags" {
  description = "A map of tags to add to key pair resource."
  type        = map(string)
}