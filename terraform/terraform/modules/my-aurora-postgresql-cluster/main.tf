
resource "aws_security_group" "my-rds_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "my-rds-subnet_group" {
  name       = "my-rds-subnet_group"
  subnet_ids = var.subnet_ids
}

resource "aws_rds_cluster_parameter_group" "my-rds-cluster-parameter-group" {
  name        = "my-rds-cluster-parameter-group"
  family      = "aurora-postgresql11"
  description = "Cluster parameter group"
}

resource "aws_rds_cluster" "my-aurora-cluster" {
  cluster_identifier              = var.cluster_identifier
  engine                          = "aurora-postgresql"
  engine_version                  = var.engine_version
  database_name                   = var.database_name
  master_username                 = var.master_username
  master_password                 = var.master_password
  db_subnet_group_name            = aws_db_subnet_group.my-rds-subnet_group.name
  vpc_security_group_ids          = [aws_security_group.my-rds_sg.id]
  db_cluster_parameter_group_name = aws_rds_cluster_parameter_group.my-rds-cluster-parameter-group.name
  skip_final_snapshot             = true # Set to false if you want to take a final snapshot when deleting the cluster

  storage_encrypted       = true
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  deletion_protection     = false
  lifecycle {
    ignore_changes = [
      engine_version
    ]
  }
  tags = {
    Name = var.cluster_identifier
  }
}

resource "aws_rds_cluster_instance" "my-cluster_instances" {
  count                = 2
  cluster_identifier   = aws_rds_cluster.my-aurora-cluster.id
  instance_class       = var.instance_class
  engine               = "aurora-postgresql"
  engine_version       = var.engine_version
  publicly_accessible  = var.publicly_accessible
  db_subnet_group_name = aws_db_subnet_group.my-rds-subnet_group.name
  identifier           = "wftltd-${count.index + 1}"
  lifecycle {
    ignore_changes = [
      engine_version
    ]
  }
  tags = {
    Name = "wftltd-${count.index + 1}"
  }
}
