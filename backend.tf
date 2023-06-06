terraform {
  backend "s3" {
    bucket = "bucket199804"
    key    = "backend"
    region = "us-east-1"
  dynamodb_table = "terraformbackend"
  }
}

