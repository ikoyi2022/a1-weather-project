# # Define a new security group
# resource "aws_security_group" "example_sg" {
#   name        = "example-security-group"
#   description = "Example security group for EC2 instances"

#   # Specify the VPC ID where the security group will be created
#   vpc_id = var.vpc_id

#   # Define ingress rules (inbound traffic)
#   # Allow SSH traffic from anywhere
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   # Allow HTTP traffic from anywhere
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   # Optionally, define egress rules (outbound traffic)
#   # Allow all outbound traffic to anywhere
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   # Optionally, define tags for the security group
#   tags = {
#     Name = "example-security-group"
#   }
# }
