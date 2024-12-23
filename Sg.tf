# Security Group for Public Subnet EC2
resource "aws_security_group" "public_ec2_sg" {
  vpc_id      = aws_vpc.vpc_3.id
  name        = "public-ec2-sg"
  description = "Allow SSH access to EC2 in public subnet"

  # Inbound rules
  ingress {
    description = "Allow SSH from anywhere (for testing)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with your specific IP for better security


  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = var.tags
}


# Security Group for private Subnets EC2
resource "aws_security_group" "private_1_ec2_sg" {
  vpc_id      = aws_vpc.vpc_1.id
  name        = "private-1-ec2-sg"
  description = "Allow SSH access to EC2 in public subnet"

  ingress {
    description = "Allow SSH from anywhere (for testing)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with your specific IP for better security


  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = var.tags

}

resource "aws_security_group" "private_2_ec2_sg" {
  vpc_id      = aws_vpc.vpc_2.id
  name        = "private-2-ec2-sg"
  description = "Allow SSH access to EC2 in public subnet"

  ingress {
    description = "Allow SSH from anywhere (for testing)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with your specific IP for better security

  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = var.tags

}
