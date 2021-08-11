# variables
variable aws_access_key {}
variable aws_secret_key {}

variable "instance_type" {
  default = "t2.micro"
}

variable "region" {
  type = string
  default = "us-east-1"
}


