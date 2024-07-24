variable "ami" {
  default = "ami-041e2ea9402c46c32"
}

variable "instance_type" {
  default = "t2.micro" 
}

variable "security_group_ids" {
  default = ["sg-095fdd7870392de34"]
}

variable "zone_id" {
  default = "Z07887863W5D2X6RVH2WV"
}
variable "domain_name" {
  default = "devrobo.online"
}


resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "frontend.dev"
  }
}
  resource "aws_route53_record" "frontend" {
    zone_id = var.zone_id
    name    = "frontend.dev.$(var.domain_name)"
    type    = "A"
    ttl     = "15"
    records = [aws_instance.frontend.private_ip] 
}


resource "aws_instance" "mongo" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "mongo.dev"
  }
}
  resource "aws_route53_record" "mongo" {
    zone_id = var.ami
    name    = "mongo.dev.$(var.domain_name)"
    type    = "A"
    ttl     = "15"
    records = [aws_instance.mongo.private_ip] 
}

resource "aws_instance" "catalogue" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_ids
  
   tags = {
    Name = "catalogue.dev"
  }
}
  resource "aws_route53_record" "catalogue" {
    zone_id = var.zone_id
    name    = "catalogue.dev.$(var.domain_name)"
    type    = "A"
    ttl     = "15"
    records = [aws_instance.catalogue.private_ip] 
}
