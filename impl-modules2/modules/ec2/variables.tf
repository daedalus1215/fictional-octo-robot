# variables.tf (ec2 module directory)

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}

variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
  # You can use the default value from the root module or override it here
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0a699202e5027c10d"
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = string
  default     = "subnet_id"
}

variable "security_group_ids" {
  description = "List of security group IDs for the EC2 instance"
  type        = list(string)
  default     = ["sec_group_id"]
}

variable "key_name" {
  description = "The name of the SSH key pair to associate with the EC2 instance"
  type        = string
  default     = "name"
}

