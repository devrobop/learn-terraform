resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "devrobop-s3"
    key = "test/terraform.tfstate"
    region = "us-east-1"
  }
}   