resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-095fdd7870392de34"]

  tags = {
    Name = "test"
  }
}


output "private_ip" {
  value = aws_instance.test.private_ip
}