domain_name=$1
sudo virt-clone -o basevm -n $domain_name -f /var/lib/libvirt/images/$domain_name.img 
virsh start $domain_name 
echo "Sleeping 10 seconds for the OS to boot"
sleep 10
ssh -t ubuntu@base. "echo $domain_name | sudo tee /etc/hostname"
ssh -t ubuntu@base. "sudo init 6"
echo "Sleeping 10 seconds for the OS to reboot"
sleep 10
