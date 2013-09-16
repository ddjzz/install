#!/bin/bash 


# Add public key to remote .ssh/authorized_keys

ssh-copy-id -i ~/.ssh/id_rsa.pub <user>@<server>


# Use specific name to generate key pair by using -f option

ssh-keygen -f ~/.ssh/<file_name>



