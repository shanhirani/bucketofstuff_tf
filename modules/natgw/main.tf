resource "aws_nat_gateway" "private_nat_gw" {
    count = "${length(var.avail_zones)}"
    subnet_id = "${element(var.subnet_private, count.index)}"
    allocation_id = "${element(aws_eip.private_nat_gw_eip.*.id, count.index)}"
    depends_on = ["var.igw_id"]
    tags = {
        name = "${var.environment}-nat-gw"
    }
}
resource "aws_eip" "private_nat_gw_eip" {
    vpc = true
    count = "${length(var.avail_zones)}"
}
