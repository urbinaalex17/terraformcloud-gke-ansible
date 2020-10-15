resource "null_resource" "install_ansible" {
  provisioner "local-exec" {
    command = "chmod +x scripts/install-ansible.sh ; ./scripts/install-ansible.sh"
  }
  triggers = {
    build_number = "${timestamp()}"
  }
  depends_on = [google_container_cluster.gke]
}

resource "null_resource" "run_ansible_playbook" {
  provisioner "local-exec" {
    command = "export PATH=$PATH:$HOME/.local/bin ; ansible-playbook ansible/playbooks/install-kong.yml"
  }
  triggers = {
    build_number = "${timestamp()}"
  }
  depends_on = [null_resource.install_ansible]
} 
