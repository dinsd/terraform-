variable "env" {
    type = string
    description = "this is env var"
    default = "dev"
}

variable "aws_region" {

}

#######################var for pub ec2
variable "instance_type" {
  type = string
  description = "ec2 type for pub ec2"
  default = "t2.micro"
}

################var for PublicEC2 AMI
variable "ami" {
  type =string
  description = "image id for public ec2"
  default = "ami-04505e74c0741db8d"
}

/*####################var for priv ec2
variable "instance_type" {
  type = string
  description = "ec2 type for  priv ec2"
  default = "t2.micro"
}

################var for PrivateEC2 AMI
variable "ami" {
      type = string 
      description = "ami id for priv ec2"
      default = "ami-04505e74c0741db8d "
}
*/
variable "cidr_block" {
  type = string
  description = "vpc cidr block" 
  default = "10.0.0.0/16"
}

