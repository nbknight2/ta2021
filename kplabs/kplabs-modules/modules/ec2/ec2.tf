# ////////////////////////
# Resource
# ////////////////////////
resource "aws_instance" "myec2" {
  ami = "ami-0aeeebd8d2ab47354"
  instance_type = var.instance_type
}
