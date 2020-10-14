resource "null_resource" "install_ansible" {
  provisioner "local-exec" {
    command = "apt install --help ; yum install --help"
  }
  depends_on = google_container_cluster.gke
}
