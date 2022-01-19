variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
  default = "us-east-1"
}
variable "webserver_amis" {
  type    = map
  default = {
    "us-east-1" = "ami-0d43d465e2051057f"
  }
}

