# var for env

variable "env" {
    type = string
    description = "this is env var"
    default = "dev"
}

# var for  ami

variable "ami" {
    type = string
    description = "image id for ec2"
    default = "ami-0be2609ba883822ec"
}

# var for instanceType

variable "instance_type" {
    type = string
    description = "capacity"
    default = "t2.micro"
}
