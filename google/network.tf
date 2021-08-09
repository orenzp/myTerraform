resource "google_compute_network" "vpc" {
  name                    = "test"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "subnet" {
  name                     = "test"
  ip_cidr_range            = "10.127.0.0/20"
  network                  = google_compute_network.vpc.self_link
  region                   = var.region
  private_ip_google_access = true
}
