#!/bin/bash

#Update the OS
apt-get update && apt-get upgrade -y

#Install K3s with optimization for 1gb RAM
#Disable Traefik (ingress) and local-storage for save memory
curl -sfL https://get.k3s.io | sh -s - \
  --disable traefik \
  --disable servicelb \
  --disable local-storage \
  --write-kubeconfig-mode 664