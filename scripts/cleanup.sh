#!/bin/bash

# Remove Ansible and its dependencies.
yum -y remove ansible

# Clean yum cache
yum clean all

# Delete old kernels
package-cleanup -C -y --oldkernels --count=1

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync

