resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-095fdd7870392de34"]

  tags = {
    Name = "frontend.dev"
  }
}


resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-095fdd7870392de34"]

  tags = {
    Name = "mongo.dev"
  }
}
resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-095fdd7870392de34"]
  
   tags = {
    Name = "catalogue.dev"
  }
}