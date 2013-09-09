#!/bin/bash

#export name_usre=git
#############################
# 1. Create user git
#############################

#sudo useradd --system --shell /bin/bash -m --group $name_usre
sudo useradd --system --shell /bin/bash -m  git

# set password
#sudo passwd $name_usre
sudo passwd git


#############################
# 2. Config before install
#############################

# Use user git to install gitolite
su - git

# Generate ssh key
ssh-keygen -t rsa -C "lqlmch0311@126.com"

cp .ssh/id_ras.pub git@J17AW.pub

# Config PATH
mkdir -p $HOME/bin
cat >> ~/.bashrc << EOF

export PATH=$PATH:$HOME/bin
EOF


# Relogin git to enable PATH variable
exit
su - git


#############################
# 3. Install or update gitolite
#############################

# Prepare gitolite source
git clone http://github.com/sitaramc/gitolite

gitolite/install -to $HOME/bin
gitolite setup -pk git@J17AW.pub
# ouput as follows
#=============================
# git@J17AW:~$ gitolite setup -pk  git@J17AW.pub 
# NOTE: the admin username is 'git'
# Initialized empty Git repository in /home/git/repositories/gitolite-admin.git/
# Initialized empty Git repository in /home/git/repositories/testing.git/
# WARNING: /home/git/.ssh/authorized_keys missing; creating a new one
# git@J17AW:~$ ls
#=============================


#############################
# 4. Config gitolite
#############################

git clone ssh://git@10.13.131.23:22/gitolite-admin.git





