# k8s-gitops

Repo for my k8s-gitops home lab.

## Diagram

![Arch](docs/arch.png)

## Features

* Microk8s (Host Storage)
* Flux2
* MetalLB
* ExternalDNS (AWS/Route53)
* Transmission (NAT/UDP)
* MiniDLNA (UPnP/UDP)

## Requirements

```
Ubuntu 20.04.1 LTS
```

## Setup

```
GITHUB_USERNAME= GITHUB_TOKEN= bin/bootstrap
```
