variable "subnet_cidr_block" {
  description = "CIDR block for the subnet within the VPC (e.g., 10.0.10.0/24)"
}

variable "availability_zone" {
  description = "AWS availability zone where resources will be deployed (e.g., ap-south-1a)"
}

variable "env_prefix" {
  description = "Environment prefix used for naming resources (e.g., dev, prod, staging)"
}

variable "vpc_id" {
  description = "ID of the VPC where the subnet and internet gateway will be created"
}

variable "default_route_table_id" {
  description = "ID of the default route table to configure for internet access routing"
}
