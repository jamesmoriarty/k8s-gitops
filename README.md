# Hombernetes

Repo for my k8s-gitops home lab.

## Features

* Microk8s (Host Storage)
* MetalLB
* ExternalDNS (AWS/Route53)
* Transmission (NAT/UDP)
* MiniDLNA (UPnP/UDP)
* Radarr & Jackett

## Requirements

```
Ubuntu 20.04.1 LTS
```

## Setup

```
bootstrap.sh
```

## Notes

### DNS

**Zone** home.jamesmoriarty.xyz

**Service Example** transmission.home.jamesmoriarty.xyz 10.0.0.200

### Network

**Subnet** 10.0.0.0/24 255.255.255.0

**Gateway** 10.0.0.138

**Access Point** 10.0.0.50

**Node External** 10.0.0.38

**DHCP Range** 10.0.0.1-50

**MetalLB Range** 10.0.0.200-25
