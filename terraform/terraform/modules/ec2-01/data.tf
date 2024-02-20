# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/*ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   filter {
#     name   = "architecture"
#     values = ["x86_64"]
#   }

#   owners = ["099720109477"]  # Canonical owner ID
# }

# # Get the latest Ubuntu AMI for a specific region 
# data "aws_ami" "latest_ubuntu" { 
#     filter { 
#         name = "name" 
#         values = ["ubuntu/images/hvm-ssd/ubuntu-focal-latest/x86_64"] 
#         } 
#         most_recent = true 
#         } 

#        # Define the EC2 instance resource 
#        resource "aws_instance" "web_server" { 
#         ami = data.aws_ami.latest_ubuntu.id 
#         instance_type = "t3.micro" 
#         # Additional configuration options for your instance 
#         # ... 
#         } 
#         # Output the public IP address of the instance 
#         output "public_ip" { 
#             value = aws_instance.web_server.public_ip }
