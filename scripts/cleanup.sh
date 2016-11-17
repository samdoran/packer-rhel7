#!/bin/bash

# Remove Ansible and its dependencies.
yum -C -y autoremove ansible

# Delete old kernels
package-cleanup -C -y --oldkernels --count=1

# Clean yum cache
echo "Removing yum cache"
rm -rf /var/cache/yum/*

# Zero out the rest of the free space using dd, then delete the written file.
echo "Reclaming free space on disk"
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync

