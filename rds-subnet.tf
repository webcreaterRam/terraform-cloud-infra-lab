resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "${local.name_prefix}-db-subnet-group"
  subnet_ids = aws_subnet.private[*].id

  tags = merge(local.computed_tags, {
    Name = "${local.name_prefix}-db-subnet-group"
  })
}