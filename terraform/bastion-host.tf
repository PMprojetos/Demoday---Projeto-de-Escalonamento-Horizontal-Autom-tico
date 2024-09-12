resource "google_compute_instance" "bastion-host" {
  name         = "bastion-host"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"
  tags         = ["bastion-host"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 20
    }
  }

  # Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      # Ephemeral public IP
    }
  }
  service_account {
    email  = "terraform@avanti-demoday.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }

  metadata_startup_script = file("./script.sh")

}
