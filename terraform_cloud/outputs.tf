output "oauth_client_id" {
  value       = tfe_oauth_client.github.oauth_token_id
  sensitive   = false
  description = "description"
  depends_on  = [tfe_oauth_client.github]
}
