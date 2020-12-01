# k8s-gitops

Repo for my k8s home lab.

## Features

* K3s
* Cilium
* Flux2
* MetalLB (L2)
* ExternalDNS (AWS/Route53)
* DynamicDNS (CronJob/ExternalDNS/Ingress)
* Transmission (NAT/UDP)
* MiniDLNA (UPnP/UDP)
* Monitoring (Helm/kube-prometheus-stack)
* Logging (Helm/loki-stack)

## Diagram

![Arch](docs/arch.png)


## Requirements

```
Ubuntu 20.04.1 LTS
```

## Setup

```
GITHUB_USERNAME= GITHUB_TOKEN= bin/bootstrap
```

## Notes

- http://transmission.home.jamesmoriarty.xyz
- http://alertmanager.home.jamesmoriarty.xyz/
- http://grafana.home.jamesmoriarty.xyz/explore
- http://prometheus.home.jamesmoriarty.xyz/