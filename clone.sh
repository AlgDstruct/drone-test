#!/usr/bin/env bash

# only execute the script when github token exists.
[ -z "$ssh_key" ] && echo "missing ssh key" && exit 3

# write the ssh key.
mkdir /root/.ssh
echo -n "$ssh_key" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

# add github.com to our known hosts.
touch /root/.ssh/known_hosts
chmod 600 /root/.ssh/known_hosts
ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts 2> /dev/null
