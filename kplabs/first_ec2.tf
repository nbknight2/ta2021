# ////////////////////////
# Variables
# ////////////////////////

variable "aws_access_key" {}
variable "aws_secret_key" {}

# ////////////////////////
# Provider
# ////////////////////////
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "us-east-1"
}

# ////////////////////////
# Resource
# ////////////////////////
resource "aws_instance" "myec2" {
  ami = "ami-0aeeebd8d2ab47354"
  instance_type = "t2.micro"
}
