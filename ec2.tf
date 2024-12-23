#  SSH keys configurations
resource "aws_key_pair" "my_key" {
  key_name   = "my-key"
  public_key = file("my-key.pub") # Path to the generated public key
}



# ---- EC2 Instances ----
resource "aws_instance" "vpc_1_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.vpc_1_private_subnet.id
  key_name      = aws_key_pair.my_key.key_name # Reference the key pair

  security_groups = [aws_security_group.private_1_ec2_sg.id]

  tags = var.tags
}

resource "aws_instance" "vpc_2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.vpc_2_private_subnet.id
  key_name      = aws_key_pair.my_key.key_name # Reference the key pair

  security_groups = [aws_security_group.private_2_ec2_sg.id]

  tags = var.tags
}

resource "aws_instance" "vpc_3_public_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.vpc_3_public_subnet.id
  key_name      = aws_key_pair.my_key.key_name # Reference the key pair

  security_groups = [aws_security_group.public_ec2_sg.id]


  tags                        = var.tags
  associate_public_ip_address = true
}


