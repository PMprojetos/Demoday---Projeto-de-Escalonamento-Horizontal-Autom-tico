resource "google_container_cluster" "primary" {
  name                     = "avanti-cluster"
  location                 = "us-central1"
  remove_default_node_pool = true
  initial_node_count       = 3
  node_locations           = ["us-central1-c"]

  addons_config {
    http_load_balancing {
      disabled = true
    }
    horizontal_pod_autoscaling {
      disabled = true
    }
  }

  release_channel {
    channel = "REGULAR"
  }
}

resource "google_container_node_pool" "primary_pool" {
  name       = "my-node-pool"
  location   = "us-central1"
  cluster    = google_container_cluster.primary.name
  node_count = 3

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
    labels = {
      "key" = "pool"
    }
  }


}


