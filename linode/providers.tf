terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.19.1"
    }
  }
  backend "remote" {
    organization = "zipori-corp"

    workspaces {
      name = "myLinode"
    }
  }
}

provider "linode" {
  token = var.linode_token
}
