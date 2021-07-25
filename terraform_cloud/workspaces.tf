
resource "tfe_workspace" "workspace" {
  name                  = "myTerraform"
  description           = "This workspace configures other workspaces in Terraform Cloud"
  organization          = tfe_organization.org.id
  file_triggers_enabled = false
  global_remote_state   = true
  terraform_version     = "1.0.1"
  working_directory     = "/terraform_cloud/"
  execution_mode        = "local"
  vcs_repo {
    identifier     = "orenzp/myTerraform"
    branch         = "main"
    oauth_token_id = tfe_oauth_client.github.oauth_token_id
  }
}
resource "tfe_workspace" "github-workspace" {
  name                  = "myGithub"
  description = "This workspace is used to provision new Github Repository and there settings"
  organization          = tfe_organization.org.id
  file_triggers_enabled = false
  global_remote_state   = true
  terraform_version     = "1.0.1"
  working_directory     = "/github/"
  execution_mode        = "remote"
  vcs_repo {
    identifier     = "orenzp/myTerraform"
    branch         = "main"
    oauth_token_id = tfe_oauth_client.github.oauth_token_id
  }
}


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
