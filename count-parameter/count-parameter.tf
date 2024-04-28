provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

variable "istest" {

}

resource "aws_instance" "dev" {
  count         = var.istest == true ? 1 : 0
  ami           = "ami-2343"
  instance_type = "t2.micro"
}
