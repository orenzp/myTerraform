terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.token
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "private"
}
