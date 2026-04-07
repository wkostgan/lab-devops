VM_NAME=$1

sudo virt-install \
  --name $VM_NAME \
  --ram 2048 \
  --vcpus 2 \
  --disk path=/var/lib/libvirt/images/vm-bastion.qcow2,size=20 \
  --os-variant ubuntu24.04 \
  --network bridge=br0 \
  --graphics none \
  --console pty,target_type=serial \
  --cdrom $LOCAL_DA_ISO
