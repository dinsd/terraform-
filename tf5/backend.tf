terraform {
    backend "s3" {
      bucket = "tfusers3"
      key = "tf5/terraform.tfstate"
      region = "us-east-1"
      dynamodb_table = "tflocktable" # for state locking
    }
}