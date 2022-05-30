terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

provider "oci" {
  auth = "InstancePrincipal"
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaa7dtj7joj6p4fwbyb72nyguyegbggapbnhmyko7inzmlijk4n7eka"
  user_ocid = "ocid1.user.oc1..aaaaaaaazbtucrdkg6k5icecpqh5omduocrmdcdkeahgxszdk5pn4mnip3za"
  fingerprint = "ae:e2:c0:de:86:36:04:2b:b4:4f:a3:b0:63:2c:67:e2"
  private_key_path = "~/.oci/key.pem"
  region = sa-saopaulo-1"
}

resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "10.0.0.0/16"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa6cu4btpjaxboimomt63c6g5glewevoqksku4ggkpt3be4c5lo5ga"
  display_name   = "vcn-20220211-1442"
}
