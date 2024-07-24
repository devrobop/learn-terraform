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
