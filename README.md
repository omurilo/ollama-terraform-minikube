# Ollama Terraform Provisioner with minikube

### To use this module you need define some of variables or use defaults.

```bash
export TF_VAR_cluster_gpus=nvidia|all # to enable or "" to disable minikube gpu usage
export TF_VAR_ollama_host=your_favorite_host.your_domain.your_tld
export TF_VAR_open_webui_host=your_favorite_open_webui_host.your_domain.your_tld
export TF_VAR_gpu_enabled=true|false # to disable or enable gpu ollama usage
export TF_VAR_gpu_driver=nvidia|amd # to set a type of gpu driver ollama use
export TF_VAR_gpu_number=2 # to define a number of gpus to ollama use
```

### To provisione a minikube with ollama and open-webui you need install terraform version 1.7.4 or bellow, you need install docker too.

[install docker](https://docs.docker.com/engine/install/)
[insttall terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
