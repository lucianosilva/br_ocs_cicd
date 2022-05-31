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

variable "user_authtoken" {
}

variable "username" {
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
  username         = var.username
  user_authtoken   = var.user_authtoken
}

terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

resource "oci_core_vcn" "vcn" {
  cidr_blocks    = ["10.0.0.0/16","11.0.0.0/16"]
  dns_label      = "vcn_tf"
  compartment_id = var.compartment_ocid
  display_name   = "vcn_tf"
}

output "vcn_id" {
  value = oci_core_vcn.vcn.id
}