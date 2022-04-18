module "ec2" {
  source = "../../modules/ec2" #local or remote ; provide a path of a child module 
  ami = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  env = "qa"
  project = "app-1"
  s3_bucket_name = module.s3.s3_bucket_name
}

module "s3" {
  source = "../../modules/s3" #local or remote ; provide a path of a child module 
  env = "qa"
}