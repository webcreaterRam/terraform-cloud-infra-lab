output "ec2_public_ips" {
  value       = [for instance in aws_instance.ec2 : instance.public_ip]
  description = "Public IPs for EC2 Instances"
}

output "rds_endpoint" {
  value       = aws_db_instance.rds.endpoint
  description = "RDS MYSQL endpoint"
}