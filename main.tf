provider "aws" {
  region     = var.region
  
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
