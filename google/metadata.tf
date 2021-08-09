resource "google_compute_project_metadata" "default" {
  metadata = {
    Project        = "HomeLab"
    Owner          = "Oren Zipori"
    enable-oslogin = "TRUE"
  }
}
resource "google_os_login_ssh_public_key" "cache" {
  user    = data.google_client_openid_userinfo.me.email
  key     = file("~/.ssh/id_rsa_orenzp.pub")
  project = data.google_project.project.number
  lifecycle {
    prevent_destroy = true
  }
}
