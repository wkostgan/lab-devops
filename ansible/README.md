# Ansible – Lab DevOps

## Objetivo

Automatizar a configuração das VMs do ambiente.

---

## Estrutura

roles/
├── postgres/
└── docker/

hosts.ini
site.yml

---

## Funcionamento

O Ansible é executado a partir do SERVIDOR e aplica configurações nas VMs.

---

## Execução

Rodar tudo:

ansible-playbook -i hosts.ini site.yml

Rodar parcialmente:

ansible-playbook -i hosts.ini site.yml --limit vm-db
ansible-playbook -i hosts.ini site.yml --limit vm-docker

---

## Roles

### postgres
- instala PostgreSQL
- cria banco e usuário
- libera acesso remoto

### docker
- instala Docker
- habilita serviço
- prepara ambiente para containers

---

## Fluxo

1. Provisionar VM
2. Executar Ansible
3. Subir serviços

---

## Observações

- acesso via SSH sem senha
- execução centralizada no SERVIDOR
