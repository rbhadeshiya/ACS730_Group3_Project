terraform {
  backend "s3" {
    bucket = "prod-group3-project"
    key    = "prod-network/terraform.tfstate"
    region = "us-east-1"
  }
}
