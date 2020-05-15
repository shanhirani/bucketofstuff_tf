output "public-subnet-sg" {
    value = aws_security_group.public-subnet-sg.id
    description = ""
}

output "private-subnet-sg" {
    value = aws_security_group.private-subnet-sg.id
    description = ""
}