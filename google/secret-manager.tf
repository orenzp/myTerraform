resource "google_secret_manager_secret" "secret_store" {
  for_each  = var.secrets
  secret_id = each.key

  replication {
    automatic = true
  }
}
resource "google_secret_manager_secret_version" "secret-version-basic" {
  for_each    = var.secrets
  secret      = google_secret_manager_secret.secret_store[each.key].name
  secret_data = each.value
}