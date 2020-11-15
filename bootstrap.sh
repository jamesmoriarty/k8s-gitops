#!/bin/sh -ex

sudo snap install microk8s --classic

# Bugfix: least priv user:
# 
# sudo usermod -a -G microk8s $USER
# sudo reboot

microk8s status --wait-ready

microk8s enable \
	dashboard \
	dns \
	storage

# Refinement: aliases:
# cat <<-EOF > ~/.bash_aliases
# alias kubectl='microk8s kubectl'
# alias k='microk8s kubectl'
# alias kgp='microk8s kubectl get pods'
# EOF

microk8s kubectl apply -f transmission
microk8s kubectl apply -f minidlna