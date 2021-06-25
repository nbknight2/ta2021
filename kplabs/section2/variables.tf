# variables
variable "vpn_ip" {
  default = "116.50.30.20/32"
}
variable aws_access_key {}
variable aws_secret_key {}
variable "elb_name" {
  type = string
}
variable az {
  type = list(string)
}
variable timeout {
  type = number
}
