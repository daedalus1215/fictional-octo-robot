# variables.tf (root directory)

variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-2"  # Change to your desired region
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"  # Change to your desired instance type
}

variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  # You should specify a valid AMI ID for your region and desired OS
  default     = "ami-12345678"
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = string
  # Change to your desired subnet ID
  default     = "subnet-12345678"
}

variable "security_group_ids" {
  description = "List of security group IDs for the EC2 instance"
  type        = list(string)
  # Change to the desired security group IDs
  default     = ["sg-12345678"]
}

variable "key_name" {
  description = "The name of the SSH key pair to associate with the EC2 instance"
  type        = string
  # Change to your desired key pair name
  default     = "my-key-pair"
}
