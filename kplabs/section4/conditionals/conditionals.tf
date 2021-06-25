# provider
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "us-east-1"
}

resource "aws_instance" "dev" {
  ami = "ami-0aeeebd8d2ab47354"
  instance_type = "t2.micro"
  count = var.is_test == true ? 1:0
}

resource "aws_instance" "prod" {
  ami = "ami-0aeeebd8d2ab47354"
  instance_type = "t2.large"
  count = var.is_test == false ? 1 : 0
}
