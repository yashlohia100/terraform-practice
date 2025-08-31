variable "vpc_cidr_block" {
  description = "CIDR block for the VPC network (e.g., 10.0.0.0/16)"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet within the VPC (e.g., 10.0.10.0/24)"
}

variable "availability_zone" {
  description = "AWS availability zone where resources will be deployed (e.g., ap-south-1a)"
}

variable "env_prefix" {
  description = "Environment prefix used for naming resources (e.g., dev, prod, staging)"
}

variable "my_ip" {
  description = "Your public IP address in CIDR format for SSH access (e.g., 203.0.113.0/32)"
}

variable "instance_type" {
  description = "EC2 instance type for the application server (e.g., t2.micro, t3.small)"
}

variable "public_key_location" {
  description = "Local file path to the SSH public key for EC2 instance access"
}

variable "image_name" {
  description = "OS image to run on EC2"
}
