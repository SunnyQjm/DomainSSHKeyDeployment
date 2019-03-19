#!/bin/bash
HOME=~;
echo $(pwd)

if [ ! -d "${HOME}/.ssh" ]; then
    mkdir ${HOME}/.ssh
    chmod 700 ${HOME}/.ssh
fi
scp pkusz_domain.pub ${HOME}/.ssh/authorized_keys
chmod 600 ${HOME}/.ssh/authorized_keys

HOME=/root;

echo $(pwd)
if [ ! -d "${HOME}/.ssh" ]; then
    sudo mkdir ${HOME}/.ssh
    sudo chmod 700 ${HOME}/.ssh
fi
sudo scp pkusz_domain.pub ${HOME}/.ssh/authorized_keys
sudo chmod 600 ${HOME}/.ssh/authorized_keys
