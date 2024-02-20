# Define string variables
variable "aws_region" {
  type        = string
  description = "AWS region for resources"
  default     = "us-east-1"
}

variable "distribution" {
  type    = string
  default = "ubuntu"
}

variable "ec2_instance_type" {
  type        = string
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
  default     = "vpc-0e95b3eb1991717e1"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for the EC2 instance"
  default     = "subnet-0cacb037f24c5fea1"
}

variable "root_volume_size" {
  type        = number
  description = "Size of the root volume for the EC2 instance"
  default     = 10
}

variable "instance_name" {
  type    = string
  default = "test"
}

variable "ami" {
  type    = string
  default = "ami-06aa3f7caf3a30282"
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = ["sg-03b308455c6fef899"]
}

variable "ec2_instance_key_name" {
  type    = string
  default = "awskeypair"
}

variable "enable_termination_protection" {
  type    = bool
  default = false
}

variable "allowed_ports" {
  description = "List of allowed ports"
  type        = list(number)
  default = [
    22,
    80,
    8080
  ]
}

variable "tags" {
  type = map(any)
  default = {
    "id"             = "1759"
    "owner"          = "Ikoyi"
    "teams"          = "WFT"
    "environment"    = "dev"
    "project"        = "A1"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}