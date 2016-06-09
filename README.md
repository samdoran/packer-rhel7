# Packer RHEL 7 #

Build a Vagrant box for RHEL7 using Packer. Currently it only supports Virtualbox.

This Packer template will register with Red Hat, run the [packer-rhel](https://github.com/samdoran/ansible-role-packer-rhel) role against the VM, then unregister from Red Hat.

Set `RHN_USERNAME` and `RHN_PASSWORD` in your envinorment prior to running `packer build rhel7.json`.
