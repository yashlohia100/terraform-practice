provider "aws" {
  region = "ap-south-1"
  # Set secrets as environment variable
  # access_key = "AK...LJ"
  # secret_key = "wT...nf"
}

variable "vpc_cidr_block" {
  description = "vpc cidr block"
}

variable "subnet_cidr_block" {
  description = "subnet cidr block"
}

# Resources: Creating a VPC and Subnet

resource "aws_vpc" "development_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    "Name" = "development"
  }
}

resource "aws_subnet" "dev_subnet1" {
  vpc_id = aws_vpc.development_vpc.id
  cidr_block = var.subnet_cidr_block
  availability_zone = "ap-south-1a"
}

# Data Sources: Creating a Subnet in existing default VPC

data "aws_vpc" "existing_vpc" {
  default = "true"
}

resource "aws_subnet" "subnet4_existing_vpc" {
  vpc_id = data.aws_vpc.existing_vpc.id
  cidr_block = "172.31.64.0/20"
  availability_zone = "ap-south-1b"
}

# Outputs

output "dev_vpc_id" {
  value = aws_vpc.development_vpc.id
}

output "dev_subnet1_id" {
  value = aws_subnet.dev_subnet1.id
}
