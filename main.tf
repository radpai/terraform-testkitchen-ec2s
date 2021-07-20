provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

resource "aws_instance" "terraform-radpai" {
  count = 4     # Here we are creating identical 4 machines.

  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = [var.security_groups]
  tags = {
    Name = "terraform-radpai-${count.index}"
    User = "radpai"
    Application = "Terraform"     }
}
