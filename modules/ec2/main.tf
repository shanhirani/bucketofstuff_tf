resource "aws_instance" "instance0" {
  count = var.instance_count

  instance_type = var.instance_type
  ami           = "lookup(var.ami_id, var.aws_region)"

  # vpc
  subnet_id = "element(var.subnets, count.index)"

  # security group
  vpc_security_group_ids = ["var.securitygroups"]

  #tags
  tags = var.tags
}