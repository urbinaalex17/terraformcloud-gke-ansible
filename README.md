# terraformcloud-gke-ansible
Create and modify a GKE Cluster using Terraform Cloud and Ansible

## Description

This repository creates the following resources on Google Cloud Platform:
- One node pool with autoscaling
- One Kubernetes Cluster using the created node pool 

The resources are planned and provisioned (applied) using [Terraform Cloud](https://app.terraform.io/app/masterventures).

## Prerequisites

| Component | Description | Version |
| --- | --- | --- |
| Terraform | Provision GCP Resources | => 0.13 |

### Configure variables

Take a look at [vars.tf](vars.tf) and create a terraform.tfvars file, here's an example:

Create terraform.tfvars

```bash
# Provider Vars
project = "vivid-plateau-278712"
region = "us-east1"
zone = "us-east1-b"

# GKE Vars
gke_cluster_name = "cea-k8s"
gke_node_pool_name = "cea-k8s-node-pool"
gke_node_pool_machine_type = "n2-standard-2"
```

Regions Documentation: https://cloud.google.com/about/locations/#regions

### Create a Service Account

Create a new Service Account in IAM with the following roles:
- Kubernetes Engine Admin
- Compute Viewer
- Service Account User

## Getting Started

Create a new key in the IAM Console and store it in the root directory of the repository, export the variable GOOGLE_CLOUD_KEYFILE_JSON 
in order for Terraform to provision the resources as follow:

```bash
export GOOGLE_CLOUD_KEYFILE_JSON=$(cat terraform-cloud.json)
```

Download providers: 

```bash
terraform init
```

### Deploy the infrastructure

```bash
terraform plan
```

```bash
terraform apply
```

### Destroy the infrastructure

```bash
terraform destroy
```
