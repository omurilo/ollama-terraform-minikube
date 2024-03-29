resource "helm_release" "ollama" {
  name             = "ollama-helm"
  repository       = "https://otwld.github.io/ollama-helm/"
  chart            = "ollama"
  namespace        = "ollama"
  create_namespace = true
  timeout          = 900000

  set {
    name  = "ingress.hosts[0].host"
    value = var.ollama_host
  }

  set {
    name  = "ollama.gpu.enabled"
    value = var.gpu_enabled
  }

  set {
    name  = "ollama.gpu.type"
    value = var.gpu_driver
  }

  set {
    name  = "ollama.gpu.number"
    value = var.gpu_number
  }

  values = [
    "${file("../ollama-helm/values.yaml")}"
  ]

  depends_on = [minikube_cluster.docker]
}

output "set_local_fqdn" {
  value = "Add IP of docker minikube cluster to the /etc/hosts as ${var.ollama_host}"
}

output "set_host_url" {
  value = "export OLLAMA_HOST to .bash_profile => echo \"export OLLAMA_HOST=\"http://${var.ollama_host}\"\" | tee -a ~/.bash_profile && source ~/.bash_profile"
}
