resource "tfe_variable" "github_api_key" {
  key          = "github_api_key"
  value        = var.github_token
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.workspace.id
  description  = "This secret holds my Github Account API Access token"
}

resource "tfe_variable" "tfe_api_key" {
  key          = "tfe_api_key"
  value        = var.tfe_token
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.workspace.id
  description  = "This secret varible holds the Terraform Cloud API Key"
}
