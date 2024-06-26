resource "aws_instance" "myec2" {
    ami = "ami-90"
    # instance_type = var.types["us-west-2"] # Can do it this way
    instance_type = var.list[1] # Can also do it this way

}

variable "list" {
    type = list
    default = ["m5.large","m5.xlarge","t2.medium"]
}

variable "types" {
    type = map 
    default = {
        us-east-1 = "t2.micro"
        us-west-2 = "t2.nano"
        ap-south-1 = "t2.small"
    }
}