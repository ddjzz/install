
# Add current user to libvirte group
sudo adduser `id -un` libvirtd

# Confirm install success or not.
sudo virsh -c qemu:///system list
# [sudo] password for svr02:
# Id    Name                           State
# ----------------------------------------------------

