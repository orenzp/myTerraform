terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.25.0"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "zipori-corp"

    workspaces {
      name = "myGithub"
    }
  }
}

provider "github" {
  token = var.github_token
}
provider "tfe" {
  token = var.tfe_token
}

