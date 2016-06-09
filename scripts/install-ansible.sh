#!/bin/bash

# Install EPEL
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# Install Ansible
yum --enablerepo=epel-testing -y install ansible
