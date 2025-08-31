variable "vpc_id" {
  description = "ID of the VPC where the subnet and internet gateway will be created"
}

variable "my_ip" {
  description = "Your public IP address in CIDR format for SSH access (e.g., 203.0.113.0/32)"
}

variable "env_prefix" {
  description = "Environment prefix used for naming resources (e.g., dev, prod, staging)"
}

variable "image_name" {
  description = "OS image to run on EC2"
}

variable "public_key_location" {
  description = "Local file path to the SSH public key for EC2 instance access"
}

variable "instance_type" {
  description = "EC2 instance type for the application server (e.g., t2.micro, t3.small)"
}

variable "subnet_id" {
  description = "subnet_id"
}

variable "availability_zone" {
  description = "AWS availability zone where resources will be deployed (e.g., ap-south-1a)"
}
