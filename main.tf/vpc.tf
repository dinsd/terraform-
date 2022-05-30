resource "aws_vpc" "mainVPC" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"
 
  tags = {
    Name = var.env
  }

}