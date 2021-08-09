resource "google_compute_instance" "default" {
  count        = var.instance_count
  name         = "compute-${count.index}"
  machine_type = "e2-small"
  #zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    auto_delete = true
    initialize_params {
      image = "ubuntu-2004-lts"
    }
  }
  /*
  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }
  */

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