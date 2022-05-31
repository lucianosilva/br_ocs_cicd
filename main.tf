variable "tenancy_ocid" {
}

variable "user_ocid" {
}

variable "fingerprint" {
}

variable "private_key_path" {
}

variable "compartment_ocid" {
}

variable "region" {
}

variable "oci_user_authtoken" {
}

variable "oci_username" {
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

resource "oci_core_vcn" "vcn" {
  cidr_blocks    = ["10.0.0.0/16","11.0.0.0/16"]
  dns_label      = "vcn"
  compartment_id = var.compartment_ocid
  display_name   = "vcn"
}

# Output

output "getCompartmentId" { value = var.compartment_ocid }

output "vcn_id" {
  value = oci_core_vcn.vcn.id
}