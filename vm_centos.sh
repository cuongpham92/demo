# this cript is to install a virtual machine with CentOS

# create a disk image for the virtual machine
# $1: name of the image, $2: storage of the image
qemu-img create -f qcow2 $1 $2 

# install CentOS to the disk image by network
# $3: name of the vm, $4: location of the CentOS repository
virt-install --name $3 --ram 1024 --cpu host --vcpus 2 --location $4 --disk path=$5,format=qcow2 --graphics none --extra-args='console=tty0 console=ttyS0,115200n8 serial'
