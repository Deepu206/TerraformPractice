resource "aws_instance" "Windows_web_server" {
  ami           = "${lookup(var.webserver_amis,var.aws_region )}"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0fb738bbc6a435ae0"
  tags = {
    Name = "Windows_server"
  }
}
output "instance_id" {
  value = aws_instance.Windows_web_server.id
}
output "instance_public_ip" {
  value = aws_instance.Windows_web_server.public_ip
}
