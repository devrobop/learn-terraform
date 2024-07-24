variable "domain_name" {
  default = "devrobo.online"
}

variable "components" {
  default = {
    frontend  = {
      instance_type = "t2.micro"
    }
    catalogue = {
      instance_type = "t2.micro"
    }
    mongo = {
      instance_type = "t2.micro"
    }
  }
}  