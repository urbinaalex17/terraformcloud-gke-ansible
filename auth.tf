module "gke_auth" {
  source           = "terraform-google-modules/kubernetes-engine/google//modules/auth"

  project_id       = var.project
  cluster_name     = var.gke_cluster_name
  location         = var.zone
}

resource "local_file" "kubeconfig" {
  content  = module.gke_auth.kubeconfig_raw
  filename = ".kubeconfig"
}
