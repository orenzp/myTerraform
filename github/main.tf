resource "github_repository" "terraform-github-repo" {
  name               = "terraform-github-repo"
  description        = "Terraform module for creating Github Repositories"
  has_issues         = false
  auto_init          = true
  gitignore_template = "Terraform"
  license_template   = "mit"
  has_projects       = false
  visibility         = "public"
}
