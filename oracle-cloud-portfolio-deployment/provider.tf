terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.107.0"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.compartment_id
  user_ocid        = var.user_ocid
  private_key_path = var.user_private_key_path
  fingerprint      = var.private_key_fingerprint
  region           = "ap-mumbai-1"
}