terraform {
  required_version = "~> 1.1.0"   #tf version
  required_providers {             #provider=aws version
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.7.0"   
  }
}
}
