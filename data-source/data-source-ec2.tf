provider "aws" {
  region = "us-east-1"
}

data "aws_instance" "example" {
    filter {
        name = "tag:Name"
        values = ["tagNames"]
    }
}