# create an igw (internet gateway)
# it enables your vpc to connect to the internet
resource "aws_internet_gateway" "igw" {
    vpc_id = "${var.vpc_id}"

    tags = {
        name = "prod-igw"
    }
}