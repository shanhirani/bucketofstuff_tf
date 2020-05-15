# create a custom route table for public subnets
# public subnets can reach to the internet buy using this
resource "aws_route_table" "prod-public-crt" {
    vpc_id = "${var.vpc_id}"
    route {
        cidr_block = "0.0.0.0/0" //associated subnet can reach everywhere
        gateway_id = "${var.igw_id}" //crt uses this igw to reach internet
    }

    tags = {
        name = "${var.environment}-public-${var.aws_region}"
    }
}
# route table association for the public subnets
resource "aws_route_table_association" "prod-crt-public-subnet" {
    count = "${length(var.avail_zones)}"
    subnet_id = "${element(var.subnet_public, count.index)}"
    route_table_id = "${aws_route_table.prod-public-crt.id}"
}
# create a custom route table for private subnets
# private subnets can reach to the internet buy using natgw
resource "aws_route_table" "prod-private-crt" {
    vpc_id = "${var.vpc_id}"
    count = "${length(var.avail_zones)}"
    route {
        cidr_block = "0.0.0.0/0" //associated subnet can reach everywhere
        nat_gateway_id = "${element(var.natgw_id, count.index)}" //crt uses this nat gw to reach internet
    }

    tags = {
        name = "${var.environment}-private-${element(var.avail_zones, count.index)}"
    }
}
# route table association for the private subnets
resource "aws_route_table_association" "prod-crt-private-subnet" {
    count = "${length(var.avail_zones)}"
    subnet_id = "${element(var.subnet_private, count.index)}"
    route_table_id = "${element(aws_route_table.prod-private-crt.*.id, count.index)}"
}