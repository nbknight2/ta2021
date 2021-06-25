# variables
variable "vpn_ip" {
  default = "116.50.30.20/32"
}
variable aws_access_key {}
variable aws_secret_key {}
variable "elb_names" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalancer", "prod-loadbalancer"]

}
variable az {
  type = list(string)
}
variable timeout {
  type = number
}
