#!/bin/bash 


# 1. sh links to bash
rm /bin/sh
cp -s /bin/bash /bin/sh

# 2. color dislay in terminal
cat >> ~/.bashrc << EOF

export PS1='\[\e]0;\u@\h: \w\a\]\[\e[32m\][\u @\h \W]$ \[\e[m\]'

EOF

# 3. config vim 

cat >> ~/.vimrc << EOF

"set nu
set mouse=a
set autoindent
set laststatus=2

EOF

