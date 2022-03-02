#!/bin/sh

chmod 400 github.ssh.rsa.pem
eval $(ssh-agent -s)
ssh-add github.ssh.rsa.pem
git $@
ssh-agent -k
