variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created."
  type        = string
  default     = "vpc-0e95b3eb1991717e1"
}

variable "subnet_ids" {
  description = "The IDs of the subnets to include in the DB subnet group."
  type        = list(string)
  default     = ["subnet-0cacb037f24c5fea1", "subnet-0d8057d781b5d088e"]
}

variable "cluster_identifier" {
  description = "The identifier for the RDS cluster."
  type        = string
  default     = "wftltd-aurora-postgres-cluster"
}

variable "engine_version" {
  description = "The version of the database engine to use."
  type        = string
  default     = "11.9"
}

variable "database_name" {
  description = "The name of the default database to create when the cluster is created."
  type        = string
  default     = "wftltd"
}

variable "master_username" {
  description = "The username for the master user."
  type        = string
}

variable "master_password" {
  description = "The password for the master user."
  type        = string
  sensitive   = true
}

variable "backup_retention_period" {
  description = "The number of days during which automatic DB snapshots are retained."
  type        = number
  default     = 7
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created."
  type        = string
  default     = "07:00-09:00"
}

variable "instance_class" {
  description = "The instance class for the RDS cluster instances."
  type        = string
  default     = "db.r5.large"
}

variable "publicly_accessible" {
  description = "Specifies whether the RDS cluster instances can be publicly accessed."
  type        = bool
  default     = true
}

variable "aws_region" {
  type        = string
  description = "AWS region for resources"
  default     = "us-east-1"
}