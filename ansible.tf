resource "null_resource" "install_ansible" {
  provisioner "local-exec" {
    command = "scripts/install-ansible.sh"
  }
  depends_on = [google_container_cluster.gke]
}
