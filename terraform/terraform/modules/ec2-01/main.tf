locals {
  selected_ami = var.distribution == "ubuntu" ? data.aws_ami.ubuntu.id : null
}

resource "aws_instance" "vm" {
  ami                     = local.selected_ami != "" ? local.selected_ami : var.ami
  instance_type           = var.ec2_instance_type
  key_name                = var.ec2_instance_key_name
  vpc_security_group_ids  = [var.vpc_security_group_ids[0]]
  subnet_id               = var.subnet_id
  disable_api_termination = var.enable_termination_protection

  root_block_device {
    volume_size = var.root_volume_size
  }

  tags = merge(var.tags, {
    Name = format("%s-%s-%s-${var.instance_name}", var.tags["id"], var.tags["environment"], var.tags["project"])
    },
  )
}