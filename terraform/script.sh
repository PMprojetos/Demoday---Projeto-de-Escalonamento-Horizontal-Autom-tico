#!/bin/bash
#Atualização da Instância
sudo apt-get update 
sudo apt-get upgrade -y

#Instalação do Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get install kubectl -y
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin -y


#Instalação do Gitlab Runner
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
sudo apt-get install gitlab-runner -y

sudo /usr/sbin/usermod -aG docker gitlab-runner

#Configuração de Registro do Runner com Gitlab.
sudo gitlab-runner register \
--non-interactive \
--url https://gitlab.com/ \
--token glrt-aeMSxadRRqzoRUFedCdV \
--executor shell \
