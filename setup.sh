#!/bin/bash
set -e 
export SETUP_HOME=`pwd`
echo SETUP_HOME=$SETUP_HOME >> /root/.bashrc

bash init-ip.sh
bash init-ssh-key.sh
bash init-hostname.sh
bash execute-allnode.sh init-global.sh
bash distribute-environment.sh
bash init-cfssl.sh
bash init-cert.sh
bash init-kubectl.sh
bash init-etcd.sh
bash init-flannel.sh
bash init-kube-nginx.sh
bash init-master.sh
bash init-apiserver.sh
bash init-controller-manager.sh
bash init-scheduler.sh
bash init-docker.sh
bash init-kubelet.sh
bash init-kube-proxy.sh
bash init-plugin-dns.sh
bash init-plugin-dashboard.sh
bash init-plugin-heapster.sh
bash init-welcome.sh





