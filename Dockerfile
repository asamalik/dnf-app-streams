from fedora:27

# Add two repositories:
#   modules.repo          - Modules
#   modules-updates.repo  - Newer versions, disabled by default.
#                           It can be enabled to show that updates work.
copy files/*.repo /etc/yum.repos.d/

run sed -i "s/enabled=1/enabled=0/g" /etc/yum.repos.d/fedora-updates.repo

copy files/jump-in-time /usr/bin/jump-in-time

# Gimme my shell, baby!
cmd /bin/bash
