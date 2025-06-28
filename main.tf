terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.8"
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = file(var.credentials_file)
}

resource "google_compute_network" "default" {
  name = "default-network"
}

resource "google_compute_instance" "default" {
  name         = var.new
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
      size  = var.boot_disk_size_gb
      type  = var.boot_disk_type
    }
    auto_delete = var.boot_disk_auto_delete
  }

  network_interface {
    network = google_compute_network.default.id
    access_config {}  # Needed for external IP (optional)
  }
}

