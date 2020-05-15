output "subnet-id-public" {
  value       = aws_subnet.subnet-public.*.id
  description = "public subnet id"
}
output "subnet-id-private" {
  value       = aws_subnet.subnet-private.*.id
  description = "private subnet id"
}