resource "aws_security_group" "db_sg" {
  name        = "${local.name_prefix}-db-sg"
  description = "Allow EC2 to connect RDS"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "MySQL access from ec2 sg"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.computed_tags, {
    Name = "${local.name_prefix}-db-sg"
  })
}