/* Use these for training purposes
   Ami = ami-0aeeebd8d2ab47354
   Instance type = t2.micro
*/
# ///////////////////////
# Locals
# ///////////////////////

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
resource "aws_instance" "instance-1" {
  ami = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
}

# ///////////////////////
# Data
# ///////////////////////
data "aws_ami" "app_ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

# ///////////////////////
# Output
# ///////////////////////
