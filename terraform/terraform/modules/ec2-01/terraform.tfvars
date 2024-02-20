
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