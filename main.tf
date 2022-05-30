terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

provider "oci" {
#  region              = "sa-saopaulo-1"
  auth                = "SecurityToken"
  config_file_profile = "HardToDie"
}

resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "10.0.0.0/16"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa6cu4btpjaxboimomt63c6g5glewevoqksku4ggkpt3be4c5lo5ga"
  display_name   = "vcn-20220211-1442"
}
