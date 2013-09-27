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
# When we had push config to gitolite-admin ,it will add "gl-conf" to specifiy project repo.
# Otherwise we will get FATAL in push commit to gitolite-admin and git clone this specify project.Bellow are the error message.

#  gitolite-admin $ git push 
# Counting objects: 7, done.
# Delta compression using up to 2 threads.
# Compressing objects: 100% (3/3), done.
# Writing objects: 100% (4/4), 451 bytes, done.
# Total 4 (delta 1), reused 0 (delta 0)
# remote: Initialized empty Git repository in /software/gitolite/repositories/t7gd/manifests-byd.git/
# remote: Initialized empty Git repository in /software/gitolite/repositories/t7gd/script.git/
# remote: FATAL: 't7g/.repo/manifests/' ends with a '/'
# To git@10.13.131.19:gitolite-admin
#    aaece04..3041494  master -> master

# src $ git clone ssh://git@10.13.131.19:22/t7gd/manifests-byd
# Cloning into 'manifests-byd'...
# FATAL: split conf set, gl-conf not present for 't7gd/manifests-byd'
# fatal: The remote end hung up unexpectedly

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


#############################
# Add an exist git repo to server as bare
#############################

# 1. Create an bare repo in server and cofig right in gitolite-admin

# 2. git clone server bare repo to locate in somewhere, for example test.

# 3. Enter test, git pull <exit git repo>

# 4. git push origin master:master

# When push successfully , We finish add this exist git repo to server.
