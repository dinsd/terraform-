terraform {
    backend "s3" {
      bucket = "tfusers3"
      key = "tf9/qa/terraform.tfstate"
      region = "us-east-1"
      dynamodb_table = "tflocktable"
    }
}