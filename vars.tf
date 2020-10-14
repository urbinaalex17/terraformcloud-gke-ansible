# Provider Vars
variable "project" {
  type = string
  description = "GCP Project"
}

variable "region" {
  type = string
  description = "GCP Region"
}

variable "zone" {
  type = string
  description = "GCP Zone"
}

# GKE Vars
variable "gke_cluster_name" {
  type = string
  description = "GKE cluster name"
}

variable "gke_node_pool_name" {
  type = string
  description = "GKE manage node pool name"
}

variable "gke_node_pool_machine_type" {
  type = string
  description = "Instance type used upon node pool creation"
}
