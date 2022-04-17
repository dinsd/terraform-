variable "env" { 
  type = string
  description = "this is env var"  
  default = "dev"
}
# var for instanceType

variable "instance_type" {
    type = string
    description = "capacity"
    default = "t2.micro"
}