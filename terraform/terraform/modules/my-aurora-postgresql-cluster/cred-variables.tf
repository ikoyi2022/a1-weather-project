# variable "db_master_username" {
#   description = "The master username for the RDS cluster"
#   type        = string
# }

# variable "db_master_password" {
#   description = "The master password for the RDS cluster"
#   type        = string
#   sensitive   = true
# }

# ##terraform apply -var='db_master_username=adminuser' -var='db_master_password=password' 

# variable "master_username" {
#   description = "The username for the master user."
#   type        = string
# }

# variable "master_password" {
#   description = "The password for the master user."
#   type        = string
# }

###When running terraform apply or terraform plan, Terraform will prompt the user to input values for these variables.

# variable "master_username" {
#   description = "The username for the master user."
#   type        = string
#   default     = var.MASTER_USERNAME
# }

# variable "master_password" {
#   description = "The password for the master user."
#   type        = string
#   default     = var.MASTER_PASSWORD
# }

###Users can set these environment variables in their shell before running Terraform commands.