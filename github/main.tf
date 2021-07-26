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
  topics             = ["terraform-module", "github"]
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
  topics             = ["terraform-module", "github"]
}