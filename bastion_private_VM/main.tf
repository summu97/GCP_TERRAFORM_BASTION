module "networking" {
source = "/root/terraform/networking"
}

module "svc-account" {
source = "/root/terraform/svc_account"
}

resource "google_compute_instance" "bastion" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = module.networking.network_self_link
    subnetwork = module.networking.subnetwork_self_link

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    ssh-keys = var.ssh_key
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = module.svc-account.svc_email
    scopes = ["cloud-platform"]
  }

  tags = [var.name]  # Add network tags

}


resource "google_compute_instance" "private" {
  name         = var.name_private
  machine_type = var.machine_type_private
  zone         = var.zone_private

  boot_disk {
    initialize_params {
      image = var.image_private
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = module.networking.network_self_link
    subnetwork = module.networking.subnetwork_self_link

  }

  metadata = {
    ssh-keys = var.ssh_key
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = module.svc-account.svc_email
    scopes = ["cloud-platform"]
  }

  tags = [var.name_private]  # Add network tags

}
