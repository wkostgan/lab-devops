
# Rede do Servidor

## Interfaces

- eno2 → interface física
- br0 → bridge principal (rede externa)
- virbr0 → NAT libvirt (192.168.122.0/24)

## Funcionamento

- br0 fornece acesso externo ao servidor
- virbr0 é usada pelas VMs (rede interna NAT)

## Aplicação

- VMs usam virbr0 por padrão
- br0 pode ser usada para expor serviços externamente

## Recriação

1. Copiar arquivo netplan:
   /etc/netplan/50-cloud-init.yaml

2. Aplicar:

   sudo netplan apply
