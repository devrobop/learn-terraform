resource "aws_route53_record" "frontend" {
   zone_id = Z07887863W5D2X6RVH2WV
   name    = "test1.devrobo.online"
   type    = "A"
   ttl     = "15"
   records = [var.private_ip] 
}

variable "private_ip" {}
  
