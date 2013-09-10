#!/bin/bash 

#############################
# In server
#############################

su - git
cd repositories

mkdir -p ubuntu/install.git
cd ubuntu/install.git

git init

#############################
# In client 
#############################

git clone ssh://git@10.13.131.23:22/ubuntu/install.git


cd install
# Do some modified

git commit

# First time we push, we should use follow full formate
git push origin master:master

# after first time

git pull
git push
