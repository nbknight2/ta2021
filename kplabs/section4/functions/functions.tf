/* Use these for training purposes
   Ami = ami-0aeeebd8d2ab47354
   Instance type = t2.micro
*/

# ///////////////////////
# Locals
# ///////////////////////

locals {
  time = formatdate("DD MMM YYYY", timestamp())
}

# ///////////////////////
# Provider
# ///////////////////////
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.region
}

# ///////////////////////
# Resource
# ///////////////////////

resource "aws_key_pair" "loginkey" {
  key_name = "login-key"
  public_key = file("${path.module}/EC2-KEY-PAIR.pem")
}

resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region)
   instance_type = "t2.micro"
   key_name = aws_key_pair.loginkey.key_name
   count = 2

   tags = {
     Name = element(var.tags,count.index)
   }
}

# ///////////////////////
# Data
# ///////////////////////

# ///////////////////////
# Output
# ///////////////////////

output "timestamp" {
  value = local.time
}
