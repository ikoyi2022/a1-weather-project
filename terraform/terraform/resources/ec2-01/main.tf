terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = local.aws_region
}

# terraform {
#   backend "s3" {
#     bucket         = ""
#     dynamodb_table = ""
#     key            = ""
#     region         = ""
#   }
# }

data "aws_ami" "latest_ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  filter {
    name   = "name"
    values = ["ubuntu/images/*ubuntu-focal-20.04-amd64-server-*"]
  }
}



locals {
  ami                           = "data.aws_ami.latest_ubuntu.id"
  aws_region                    = "us-east-1"
  distribution                  = "ubuntu"
  ec2_instance_type             = "t2.micro"
  vpc_security_group_ids        = ["sg-03b308455c6fef899"]
  instance_name                 = "test"
  vpc_id                        = "vpc-0e95b3eb1991717e1"
  subnet_id                     = "subnet-0cacb037f24c5fea1"
  root_volume_size              = 10
  enable_termination_protection = false
  ec2_instance_key_name         = "awskeypair"
  allowed_ports = [
    22,
    80,
    8080
  ]
  tags = {
    "id"             = "2560"
    "owner"          = "DevOps Easy Learning"
    "teams"          = "DEL"
    "environment"    = "dev"
    "project"        = "del"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }

}


module "ec2-01" {
  source                        = "../../modules/ec2-01"
  aws_region                    = local.aws_region
  distribution                  = local.distribution # Corrected spelling
  ec2_instance_type             = local.ec2_instance_type
  instance_name                 = local.instance_name
  ec2_instance_key_name         = local.ec2_instance_key_name
  vpc_security_group_ids        = local.vpc_security_group_ids
  vpc_id                        = local.vpc_id
  subnet_id                     = local.subnet_id
  root_volume_size              = local.root_volume_size
  enable_termination_protection = local.enable_termination_protection
  allowed_ports                 = local.allowed_ports
  tags                          = local.tags
}


