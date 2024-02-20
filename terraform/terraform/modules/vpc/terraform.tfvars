aws_region = "us-east-1"

cidr_block = "10.10.0.0/16"
private-subnets-cdir = [
  "10.10.1.0/24",
  "10.10.2.0/24",
  "10.10.3.0/24",
]
public-subnet-cidr = [
  "10.10.4.0/24",
  "10.10.5.0/24",
  "10.10.6.0/24",
]
aws_availability_zones = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c",
]
instance_tenancy                 = "default"
enable_dns_support               = true
enable_dns_hostnames             = true
assign_generated_ipv6_cidr_block = false

cluster_name = "1759-dev-A1"

common_tags = {
  "id"             = "1759"
  "owner"          = "Ikoyi"
  "teams"          = "WFT"
  "environment"    = "dev"
  "project"        = "A1"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"
}