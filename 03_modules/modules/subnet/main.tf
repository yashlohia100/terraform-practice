resource "aws_subnet" "myapp_subnet_1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone
  tags = {
    "Name" = "${var.env_prefix}-subnet-1"
  }
}

resource "aws_internet_gateway" "myapp_internet_gateway" {
  vpc_id = var.vpc_id
  tags = {
    "Name" = "${var.env_prefix}-igw"
  }
}

resource "aws_default_route_table" "main_rtb" {
  default_route_table_id = var.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myapp_internet_gateway.id
  }
  tags = {
    "Name" = "${var.env_prefix}-main-rtb"
  }
}
