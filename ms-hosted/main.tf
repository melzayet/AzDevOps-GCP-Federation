variable "accesskey" {
  type = string
}

provider "google" {
  project = "<gcp project>"
  region  = "us-central1"
  zone    = "us-central1-c"
  access_token = "${var.accesskey}"
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "false"
}