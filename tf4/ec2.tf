# creating ec2 resource 

resource "aws_instance" "tfServer" {
  ami           = var.ami # referencing to ami variable from variables.tf
  instance_type = var.instance_type # referencing to instance type in variables.tf
  tags = {
    Name        =  var.env # referencing to environment in variables.tf
  }
  vpc_security_group_ids = [aws_security_group.tfSG.id] # id=attribute=changeable
}