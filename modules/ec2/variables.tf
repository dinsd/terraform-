variable "env" { 
  type = string
  description = "this is env-var"  
  
}
variable "ami" {
    type = string
    description = "ami for ec2 instance-var"
  
}
# var for instanceType

variable "instance_type" {
    type = string
    description = "size of ec2 instance-var"
 
}
variable "project" {
    type = string
    description = "project-var"
 
}