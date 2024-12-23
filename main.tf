provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Youssef-shawky"
    workspaces {
      name = "transit_gateway_workspace"
    }
  }
}
