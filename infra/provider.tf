terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  credentials = file("${path.module}/eltl-project-dcac31107577.json")
  project     = "eltl-project"
  region      = "europe-west1"
}
