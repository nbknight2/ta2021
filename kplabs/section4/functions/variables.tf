# variables
variable aws_access_key {}
variable aws_secret_key {}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-0aeeebd8d2ab47354"
  }
}


