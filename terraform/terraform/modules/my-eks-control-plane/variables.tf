variable "tags" {
  type        = map(string)
  description = "Common tags to be applied to resources"
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

variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "eks_version" {
  type = string
}

variable "endpoint_private_access" {
  type = bool
}

variable "endpoint_public_access" {
  type = bool
}
