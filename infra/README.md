# Infraestrutura

## Hypervisor
- Ubuntu Server
- KVM/libvirt

## Rede
- Brigde: br0 (rede externa)
- NAT: 192.168.122.0/24

Detalhes:
- network/README.md

## VMs
- vm-db
- vm-docker
- vm-http
- vm-monitoring
- vm-app

## Fluxo
1. Criar VM via script
2. Aplicar configuração via Ansible
