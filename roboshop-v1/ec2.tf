resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-095fdd7870392de34"]

  tags = {
    Name = "frontend.dev"
  }
}
  resource "aws_route53_record" "frontend" {
    zone_id = Z07887863W5D2X6RVH2WV
    name    = "frontend.dev.devrobo.online"
    type    = "A"
    ttl     = "15"
    records = [aws_instance.frontend.private_ip] 
}


resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-095fdd7870392de34"]

  tags = {
    Name = "mongo.dev"
  }
}
  resource "aws_route53_record" "frontend" {
    zone_id = Z07887863W5D2X6RVH2WV
    name    = "mongo.dev.devrobo.online"
    type    = "A"
    ttl     = "15"
    records = [aws_instance.mongo.private_ip] 
}

resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-095fdd7870392de34"]
  
   tags = {
    Name = "catalogue.dev"
  }
}
  resource "aws_route53_record" "catalogue" {
    zone_id = Z07887863W5D2X6RVH2WV
    name    = "catalogue.dev.devrobo.online"
    type    = "A"
    ttl     = "15"
    records = [aws_instance.catalogue.private_ip] 
}
