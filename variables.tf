variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "azs" {
  description = "List of AZs"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs by AZ"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs by AZ"
  type        = list(string)
}

variable "instance_types" {
  description = "List of EC2 instance types"
  type        = list(string)
}

variable "ec2_count" {
  description = "Number of EC2 instances to create"
  type        = number
}

variable "sg_ports" {
  description = "List of allowed inbound ports for EC2 SG"
  type        = list(number)
}

variable "tags" {
  description = "Common tags for resources"
  type        = map(string)
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}