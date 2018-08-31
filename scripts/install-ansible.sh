#!/bin/bash

# Install EPEL
#yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# Install Ansible
subscription-manager repos --enable rhel-7-server-ansible-2.6-rpms
yum -y install ansible
