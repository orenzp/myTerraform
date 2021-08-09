resource "github_repository" "terraform-github-repo" {
  name               = "terraform-github-repo"
  description        = "Terraform module for creating Github Repositories, This module was created via my Terraform Cloud workspace"
  has_issues         = false
  auto_init          = true
  gitignore_template = "Terraform"
  license_template   = "mit"
  has_projects       = false
  has_wiki           = false
  visibility         = "public"
  topics             = ["terraform-module", "github", "terraform-managed"]
  lifecycle {
    prevent_destroy = true
  }
}
resource "github_repository" "augury" {
  name               = "augury"
  description        = "Github repository for code related to Job interview with Augury"
  auto_init          = true
  gitignore_template = "Terraform"
  license_template   = "mit"
  has_projects       = false
  has_wiki           = false
  has_issues         = false
  visibility         = "private"
  archived = true
  topics             = ["terraform-module", "github", "terraform-managed"]
  lifecycle {
    prevent_destroy = true
  }
}
resource "github_repository" "myTerraform" {
  name               = "myTerraform"
  description        = "Example of Terraform HCL for providers like Azure, Github, CloudFlare etc..."
#   auto_init          = true
#   gitignore_template = "Terraform"
#   license_template   = "mit"
  has_projects       = false
  has_wiki           = false
  has_issues         = false
  has_downloads = false
  visibility         = "public"
  archived = false
  topics             = ["terraform-module", "github", "terraform-managed"]
  lifecycle {
    prevent_destroy = true
  }
}
resource "github_repository" "myAnsible" {
  name               = "myAnsible"
  description        = "This repo holds all my Ansible code and examples."
# #   auto_init          = true
# #   gitignore_template = "Terraform"
# #   license_template   = "mit"
  has_projects       = false
  has_wiki           = false
  has_issues         = false
  has_downloads = false
  visibility         = "public"
  archived = false
  topics             = ["ansible-code", "github","terraform-managed"]
  lifecycle {
    prevent_destroy = true
  }
}