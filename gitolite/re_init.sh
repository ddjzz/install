#!/bin/bash -e

#  Fix FATAL: 't7t/.repo/manifests/' ends with a '/'

mv /software/gitolite/repositories/t7h_4.2/.repo	/software/gitolite/.t7h_4.2
mv /software/gitolite/repositories/t7t/.repo		/software/gitolite/.t7t

gitolite setup -pk atwood@J17AW.pub
# After execute this, in every directory of hooks/, have a link file :hooks/update -> /home/git/.gitolite/hooks/common/update


mv /software/gitolite/.t7h_4.2	/software/gitolite/repositories/t7h_4.2/.repo
mv /software/gitolite/.t7t	/software/gitolite/repositories/t7t/.repo
