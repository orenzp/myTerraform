resource "tfe_workspace" "workspace" {
  name                  = "myTerraform"
  description           = "This workspace configures other workspaces in Terraform Cloud"
  organization          = tfe_organization.org.id
  file_triggers_enabled = false
  global_remote_state   = true
  terraform_version     = "1.0.1"
  working_directory     = "/terraform_cloud/"
  execution_mode        = "local"
  # vcs_repo {
  #   identifier     = "orenzp/myTerraform"
  #   branch         = "main"
  #   oauth_token_id = data.tfe_oauth_client.tfe_oauth.id
  # }
}
resource "tfe_workspace" "github-workspace" {
  name                  = "myGithub"
  description           = "This workspace is used to provision new Github Repository and there settings"
  organization          = tfe_organization.org.id
  file_triggers_enabled = false
  global_remote_state   = true
  terraform_version     = "1.0.1"
  working_directory     = "/github/"
  execution_mode        = "local"
  # vcs_repo {
  #   identifier     = "orenzp/myTerraform"
  #   branch         = "main"
  #   oauth_token_id = data.tfe_oauth_client.tfe_oauth.id
  # }
}
resource "tfe_workspace" "linode-workspace" {
  name                  = "myLinode"
  description           = "This workspace is used to provision resouces on Linode cloud"
  organization          = tfe_organization.org.id
  file_triggers_enabled = false
  global_remote_state   = true
  terraform_version     = "1.0.1"
  working_directory     = "/linode/"
  execution_mode        = "local"
  # vcs_repo {
  #   identifier     = "orenzp/myTerraform"
  #   branch         = "main"
  #   oauth_token_id = data.tfe_oauth_client.tfe_oauth.id
  # }
}
resource "tfe_workspace" "google-workspace" {
  name                  = "myGoogle"
  description           = "This workspace is used to provision resouces on my Google account"
  organization          = tfe_organization.org.id
  file_triggers_enabled = false
  global_remote_state   = true
  terraform_version     = "1.0.1"
  working_directory     = "/google/"
  execution_mode        = "local"
  # vcs_repo {
  #   identifier     = "orenzp/myTerraform"
  #   branch         = "main"
  #   oauth_token_id = data.tfe_oauth_client.tfe_oauth.id
  # }
}