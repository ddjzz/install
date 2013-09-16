#!/bin/bash 

----------------------once--------------------
apt-get install quota

quotacheck -avug
# if partion is copy file into ,this may notes:
# quotacheck: Cannot remount filesystem mounted on /home read-only so counted values might not be right.
# Please stop all programs writing to filesystem or use -m flag to force checking.

quotaon -avug
# /dev/sda5 [/home]: group quotas turned on
# /dev/sda5 [/home]: user quotas turned on


quotaoff -a
# no notes



--------------------more than once ------------------

edquota -u server01
# than change limitation


edquota -p server01 -u android-toshiba
# android-toshiba the same with server01


edquota -t


# look status
quota -uvs android-toshiba



