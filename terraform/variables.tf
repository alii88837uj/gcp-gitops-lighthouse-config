# variables.tf

variable "gcp_project_id" {
  type        = string
  description = "The GCP Project ID where resources will be deployed"
}

variable "gcp_region" {
  type    = string
  default = "us-central1"
}
