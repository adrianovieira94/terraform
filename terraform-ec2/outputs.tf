output "ip_ec2" {
  description = "ip da ec2"
  value       = aws_instance.ec2.public_ip

}