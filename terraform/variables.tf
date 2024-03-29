variable "cluster_gpus" {
  default = "all"
}

variable "ollama_host" {
  default = "ollama.local"
}

variable "open_webui_host" {
  default = "open-webui.local"
}

variable "gpu_enabled" {
  default = true
}

variable "gpu_driver" {
  default = "nvidia"
}

variable "gpu_number" {
  default = 1
}
