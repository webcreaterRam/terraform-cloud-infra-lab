resource "aws_security_group" "ec2_sg" {
  name        = "${local.name_prefix}-ec2-sg"
  description = "Security Group for EC2 Instances"
  vpc_id      = aws_vpc.main.id

  # Inbound Rules
  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      description = "Allow port ${ingress.value}"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  # outbound Rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.computed_tags, {
    Name = "${local.name_prefix}-ec2-sg"
  })
}