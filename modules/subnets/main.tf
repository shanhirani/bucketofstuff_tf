resource "aws_subnet" "subnet-public" {
    count = "${length(var.avail_zones)}"
    vpc_id = "${var.vpc_id}"
    cidr_block = "${cidrsubnet(var.vpc_cidr, 8, count.index)}"
    map_public_ip_on_launch = "true"
    availability_zone = "${element(var.avail_zones, count.index)}"

    tags = {
        name = "${var.environment}-${element(var.avail_zones, count.index)}"
    }
}
resource "aws_subnet" "subnet-private" {
    count = "${length(var.avail_zones)}"
    vpc_id = "${var.vpc_id}"
    cidr_block = "${cidrsubnet(var.vpc_cidr, 8, count.index + 3)}"
    map_public_ip_on_launch = "false"
    availability_zone = "${element(var.avail_zones, count.index)}"

    tags = {
        name = "${var.environment}-${element(var.avail_zones, count.index)}"
    }
}