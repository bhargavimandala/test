provider "aws" {
    region = "eu-west-2"
    profile = "DevOps"
}

terraform {
  backend "s3" {
    bucket = "test-s3-work-new"
    key    = "terraform.tfstate"
    region = "eu-west-2"
    profile = "DevOps"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-123-test"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
