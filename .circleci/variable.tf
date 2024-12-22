# AWS Region
variable "region" {
  description = "The AWS region to deploy resources"
  default     = "us-east-1"
}

# VPC CIDR Blocks
variable "vpc_1_cidr" {
  description = "CIDR block for VPC 1"
  default     = "10.0.0.0/16"
}

variable "vpc_2_cidr" {
  description = "CIDR block for VPC 2"
  default     = "11.0.0.0/16"
}

variable "vpc_3_cidr" {
  description = "CIDR block for VPC 3"
  default     = "12.0.0.0/16"
}

# Subnet CIDR Blocks
variable "vpc_1_private_subnets" {
  description = "Private subnet CIDRs for VPC 1"
  default     = "10.0.0.0/24"
}

variable "vpc_2_private_subnets" {
  description = "Private subnet CIDRs for VPC 2"
  default     = "11.0.0.0/24"
}

variable "vpc_3_private_subnets" {
  description = "Private subnet CIDRs for VPC 3"
  default     = "12.0.1.0/24"
}

variable "vpc_3_public_subnets" {
  description = "Public subnet CIDRs for VPC 3"
  default     = "12.0.2.0/24"
}

# Tags
variable "tags" {
  description = "Tags for resources"
  default = {
    Environment = "terraformChamps"
    Owner       = "YoussefShawky"
  }
}

# EC2 AMI and Instance Type
variable "ami_id" {
  description = "AMI ID for EC2 instances"
  default     = "ami-0453ec754f44f9a4a" # Replace with your AMI ID
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  default     = "t2.micro"
}

#AVz for subnets

variable "availability_zone_vpc_1_private_subnet" {
  description = "Availability zone vpc 1 private subnet"
  default     = "use1-az1"
}

variable "availability_zone_vpc_2_private_subnet" {
  description = "Availability zone vpc 2 private subnet"
  default     = "use1-az2"
}

variable "availability_zone_vpc_3_public_subnet" {
  description = "Availability zone vpc 3 public subnet"
  default     = "use1-az3"
}

variable "availability_zone_vpc_3_private_subnet" {
  description = "Availability zone vpc 3 private subnet"
  default     = "use1-az3"
}


variable "env" {
  default = "test"
}
