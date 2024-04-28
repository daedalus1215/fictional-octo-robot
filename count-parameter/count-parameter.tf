provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

# Don't do this
resource "aws_iam_user" "lb" {
    name = "instance.${count.index}"
    count = 2
}
