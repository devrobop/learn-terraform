variable "domain_name" {
  default = "devrobo.online"
}

variable "components" {
  default = {
    frontend  = {}
    catalogue = {}
    mongo = {}
    redis = {}
    rabbitmq = {}
    mysql = {}
    user = {}
    cart = {}
    shipping = {}
    payment = {}
    dispatch = {}

  }
}
