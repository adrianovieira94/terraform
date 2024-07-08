output "vpc-id" {
  description = "id da vpc"
  value       = aws_vpc.vpc.id
}

output "subnet-id" {
  description = "id da vpc"
  value       = aws_subnet.subnet.id
}

output "sg-id" {
  description = "id do sg"
  value       = aws_security_group.sga.id
}