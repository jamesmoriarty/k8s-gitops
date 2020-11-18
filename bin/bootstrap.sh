#!/bin/sh -ex

sudo snap install microk8s --classic

# Bugfix: least priv user:
# 
# sudo usermod -a -G microk8s $USER
# sudo reboot

microk8s status --wait-ready

microk8s enable \
	dns \
	storage \
	dashboard \
	metallb

# Refinment: use user home host storage:
sudo mkdir -p /var/k8s-gitops/
sudo ln -sf /var/k8s-gitops/ "$HOME/Downloads"

# Refinement: aliases:
#
# cat <<-EOF > ~/.bash_aliases
# alias kubectl='microk8s kubectl'
# alias k='microk8s kubectl'
# alias kgp='microk8s kubectl get pods'
# EOF

microk8s kubectl create ns flux || echo "skipping"

sudo snap install fluxctl --classic

export GHUSER="jamesmoriarty"
fluxctl install \
--git-user=${GHUSER} \
--git-email=${GHUSER}@users.noreply.github.com \
--git-url=git@github.com:${GHUSER}/k8s-gitops \
--git-path=cluster \
--git-branch main \
--namespace=flux | microk8s kubectl apply -f -

# Bugfix: Deploy permission (push/pull) at https://github.com/$GHUSER/k8s-gitops/settings/keys
#
# fluxctl --k8s-fwd-ns=flux identity

# Bugfix: Automatically add workloads.
#
# fluxctl --k8s-fwd-ns=flux list-workloads --all-namespaces

fluxctl --k8s-fwd-ns=flux automate -n default -w default:deployment/external-dns
fluxctl --k8s-fwd-ns=flux automate -n default -w default:deployment/transmission
fluxctl --k8s-fwd-ns=flux automate -n default -w default:deployment/minidlna
