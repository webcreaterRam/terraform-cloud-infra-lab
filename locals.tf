locals {
  name_prefix = "demo-app"

  computed_tags = merge(
    var.tags,
    {
      Project = "Terraform-Learning"
      Owner   = "Student"
    }
  )

  # Distribute instance types for EC2
  # Example: count = 4 → [t3.micro, t3.micro, t3.small, t3.small]

  instance_type_map = {
    for i in range(var.ec2_count) :
    i => (
      i < 2 ? var.instance_types[0] : var.instance_types[1]
    )
  }
}