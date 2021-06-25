# provider
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "us-east-1"
}

# resource "aws_instance" "myec2-1" {
#   ami = "ami-0aeeebd8d2ab47354"
#   # instance_type = var.types["us-west-2"]
#   instance_type = "t2.micro"
#   count = 3
# }

# resource "aws_instance" "myec2-2" {
#   ami = "ami-0aeeebd8d2ab47354"
#   # instance_type = var.types["us-west-2"]
#   instance_type = "t2.micro"
# }

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system"

  
}
