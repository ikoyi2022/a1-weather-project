aws_region = "us-east-1"

vpc_id = "vpc-0e95b3eb1991717e1"

subnet_ids = [
  "subnet-0cacb037f24c5fea1",
  "subnet-0d8057d781b5d088e"
]

cluster_identifier = "wftltd-aurora-postgres-cluster"

engine_version = "11.9"

database_name = "wftltd"

backup_retention_period = 7

preferred_backup_window = "07:00-09:00"

instance_class = "db.r5.large"

publicly_accessible = true
