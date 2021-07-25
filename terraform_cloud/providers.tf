terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.25.0"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "zipori-corp"

    workspaces {
      name = "myTerraform"
    }
  }
}

provider "tfe" {
  token = var.tfe_token
}

