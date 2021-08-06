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

resource "google_compute_instance" "default" {
  count        = var.instance_count
  name         = "compute-${count.index}"
  machine_type = "e2-standard-2"
  #zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    auto_delete = true
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}