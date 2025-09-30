terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.14.1"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World Again!'"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "devops-directivemy-test-bucket"
}