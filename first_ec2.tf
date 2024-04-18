provider "aws" { 
    region = "us-east-1"
    access_key = "key"
    secret_key = "secret"
}

resource "aws_instance" "my_ec2" {
    ami = "ami"
    instance_type = "t2.micro"
    subnet_id = "subnet"
}