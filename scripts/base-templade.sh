# base-template.sh

# instalar pacotes básicos
apt update
apt install -y openssh-server sudo

# criar usuário devops
useradd -m -s /bin/bash devops
usermod -aG sudo devops
