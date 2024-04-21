terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.21.0"
    }
  }
}

data "google_kms_key_ring" "key_ring" {
  name     = "${var.workspace}-keyring"
  location = var.region
}

data "google_kms_crypto_key" "symmetric_key" {
  key_ring = data.google_kms_key_ring.key_ring.id
  name     = "${var.workspace}-symmetric-key"
}

data "google_dns_managed_zone" "working_zone" {
  name = "${var.workspace}-public-zone"
}
