resource "aws_instance" "ec2" {
  count = var.ec2_count

  ami           = data.aws_ami.amazon_linux.id
  instance_type = local.instance_type_map[count.index]
  key_name      = "RamCloud"

  subnet_id = aws_subnet.public[count.index % length(aws_subnet.public)].id

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  associate_public_ip_address = true

  tags = merge(local.computed_tags, {
    Name = "${local.name_prefix}-ec2-${count.index + 1}"
  })
}
