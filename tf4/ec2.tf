# creating ec2 resource 

resource "aws_instance" "tfServer" {
  ami           = data.aws_ami.ubuntu.image_id #data.label1.label2.datasource_ami
  instance_type = var.instance_type # referencing to instance type in variables.tf
  tags = {
    Name        =  var.env # referencing to environment in variables.tf
  }
  vpc_security_group_ids = [aws_security_group.tfSG.id] # id=attribute=changeable
}