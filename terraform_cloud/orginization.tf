resource "tfe_organization" "org" {
  name  = "zipori-corp"
  email = "orenzp@hotmail.com"
}
resource "tfe_oauth_client" "github" {
  organization     = "zipori-corp"
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.github_token
  service_provider = "github"
}
