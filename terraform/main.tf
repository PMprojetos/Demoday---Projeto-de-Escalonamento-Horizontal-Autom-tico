terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.29.1"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "avanti-demoday"
  region      = "us-central1"
  credentials = "key.json"
}