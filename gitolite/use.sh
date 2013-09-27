#!/bin/bash 

#############################
# In server
#############################

su - git
cd repositories

mkdir -p ubuntu/install.git
cd ubuntu/install.git

git init --bare

# Note: for specify not wild project, we must create repo in server first , and then config gitolite-admin. 
# Otherwise we will get FATAL in push commit to gitolite-admin and git clone this specify project.

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
