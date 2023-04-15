terraform {
  backend "s3" {
    bucket = "prod-group3-project"
    key    = "prod-webserver/terraform.tfstate"
    region = "us-east-1"
  }
}