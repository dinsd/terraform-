# creating ec2 resource 

resource "aws_instance" "main" {
 
  ami           = var.ami #data.label1.label2.datasource_ami
  instance_type = var.instance_type # referencing to instance type in variables.tf
  tags = {
    Name        =  "${var.env}-instance" # referencing to environment in variables.tf
    Environment = var.env
    Project = var.project
    Bucket_name = var.s3_bucket_name
  }
  
}