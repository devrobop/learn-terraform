
variable "instance_type" {
  default = "t2.micro" 
}

variable "domain_name" {
  default = "devrobo.online"
}

variable "components" {
  default = ["frontend","catalogue","mongo"]
}