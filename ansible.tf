resource "null_resource" "install_ansible" {
  provisioner "local-exec" {
    command = "chmod +x scripts/install-ansible.sh ; ./scripts/install-ansible.sh"
  }
  depends_on = [google_container_cluster.gke]
}

resource "null_resource" "run_ansible_playbook" {
  provisioner "local-exec" {
    command = "ansible-playbook --help"
  }
  depends_on = [null_resource.install_ansible]
} 