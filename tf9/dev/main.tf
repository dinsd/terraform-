module "ec2" {
  source = "../../modules/ec2" #local or remote ; provide a path of a child module 
  ami = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  env = "dev"
  project = "app-1"
}