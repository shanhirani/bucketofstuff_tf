output "natgw-id" {
    value = aws_nat_gateway.private_nat_gw.*.id
    description = ""
}