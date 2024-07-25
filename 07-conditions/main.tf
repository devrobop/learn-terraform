# condition in terraform is to pick a value not about running the block

resource "aws_route53_record" "frontend" {
  zone_id =  "nskxcbdkncals;asnvjnalias" 
    name = "test.devrobo.online"
    type = "A"
    ttl = var.ttl == "" ? 15 : var.ttl 
    records = ["1.1.1.1"]
}

variable "ttl" {}
  
    