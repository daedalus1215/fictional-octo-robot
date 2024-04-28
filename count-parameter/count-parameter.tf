provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "instance-1" {
    ami = "ami-23"
    instance_type = "t2.micro"
}

# Don't do this
resource "aws_instance" "instance-2" {
    ami = "ami-23"
    instance_type = "t2.micro"
}
