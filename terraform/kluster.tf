resource "minikube_cluster" "docker" {
  driver            = "docker"
  container_runtime = "docker"
  gpus              = var.cluster_gpus
  cluster_name      = "terraform-kluster"
  nodes             = 1
  addons = [
    "default-storageclass",
    "ingress",
    "storage-provisioner"
  ]
}
