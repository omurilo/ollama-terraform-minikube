resource "helm_release" "open-webui" {
  name             = "open-webui"
  chart            = "../open-web-ui"
  namespace        = "open-webui"
  create_namespace = true

  set {
    name  = "webui.ingress.host"
    value = "${var.open_webui_host}"
    type  = "string"
  }

  set {
    name = "ollama.host_url"
    value = "http://${var.ollama_host}"
  }

  values = [
    "${file("./open-webui.values.yaml")}"
  ]

  depends_on = [minikube_cluster.docker]
}
