# security group
resource "aws_security_group" "public-subnet-sg" {
    vpc_id = "${var.vpc_id}"
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        name = "${var.environment}-public-subnet-sg"
    }
}
resource "aws_security_group" "private-subnet-sg" {
    vpc_id = "${var.vpc_id}"
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress{
        from_port = 0
        to_port = 0
        protocol = -1
        security_groups = ["${aws_security_group.public-subnet-sg.id}"]
    }
    tags = {
    name = "${var.environment}-private-subnet-sg"
    }
}