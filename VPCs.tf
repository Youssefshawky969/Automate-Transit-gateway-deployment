#   VPC 1 with Private Subnet
resource "aws_vpc" "vpc_1" {
  cidr_block = var.vpc_1_cidr
  tags = {
    Name = "${var.env}-vpc-1"
  }
}

resource "aws_subnet" "vpc_1_private_subnet" {
  vpc_id               = aws_vpc.vpc_1.id
  cidr_block           = var.vpc_1_private_subnets
  availability_zone_id = var.availability_zone_vpc_1_private_subnet
  tags = {
    Name = "${var.env}-private-subnet-vpc-1"
  }
}

# ---- VPC 2 with Private Subnet ----
resource "aws_vpc" "vpc_2" {
  cidr_block = var.vpc_2_cidr
  tags = {
    Name = "${var.env}-vpc-2"
  }
}

resource "aws_subnet" "vpc_2_private_subnet" {
  vpc_id               = aws_vpc.vpc_2.id
  cidr_block           = var.vpc_2_private_subnets
  availability_zone_id = var.availability_zone_vpc_2_private_subnet
  tags = {
    Name = "${var.env}-private-subnet-vpc-2"
  }
}

# ---- VPC 3 with Public Subnet ----
resource "aws_vpc" "vpc_3" {
  cidr_block = var.vpc_3_cidr
  tags = {
    Name = "${var.env}-vpc-3"
  }
}

resource "aws_subnet" "vpc_3_private_subnet" {
  vpc_id               = aws_vpc.vpc_3.id
  cidr_block           = var.vpc_3_private_subnets
  availability_zone_id = var.availability_zone_vpc_3_private_subnet
  tags = {
    Name = "${var.env}-private-subnet-vpc-3"
  }
}

resource "aws_subnet" "vpc_3_public_subnet" {
  vpc_id                  = aws_vpc.vpc_3.id
  cidr_block              = var.vpc_3_public_subnets
  availability_zone_id    = var.availability_zone_vpc_3_public_subnet
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.env}-public-subnet-vpc-3"
  }
}