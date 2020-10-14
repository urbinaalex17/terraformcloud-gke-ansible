resource "null_resource" "install_ansible" {
  provisioner "local-exec" {
    command = "ls -l ; chmod +x scripts/install-ansible.sh ; ./scripts/install-ansible.sh"
  }
  depends_on = [google_container_cluster.gke]
}
