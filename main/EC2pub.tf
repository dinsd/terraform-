resource "aws_instance" "pubEC2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.env
  }
  vpc_security_group_ids = [aws_security_group.sg.id]
}