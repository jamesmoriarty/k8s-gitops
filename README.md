# k8s-gitops

Repo for my k8s home lab.

### Workloads

* ExternalDNS (AWS/Route53)
* DynamicDNS (CronJob/ExternalDNS/Ingress)
* Transmission (NAT/UDP)
* MiniDLNA (UPnP/UDP)
* Monitoring (Helm/kube-prometheus-stack)
* Logging (Helm/loki-stack)
* Security (Helm/falco)
*...

## Runbook

### Low disk space on node

On the node see the image cached locally run:

```
k3s crictl images
```

To remove unused images run:

```
k3s crictl rmi --prune
```

## Setup

```
GITHUB_USERNAME=jamesmoriarty GITHUB_TOKEN=<...> bin/bootstrap
```

## Notes

- http://grafana.home.jamesmoriarty.xyz/explore
- http://alertmanager.home.jamesmoriarty.xyz/
- http://prometheus.home.jamesmoriarty.xyz/
- http://transmission.home.jamesmoriarty.xyz/
