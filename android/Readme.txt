
# 1. Install compile packages
./install_packages_x64.sh

# 2. Install jdk
cp to /usr/local
cd /usr/local
chmod 755 jdk...
./jkd...

config
vim /etc/profile

export JAVA_HOME=/usr/local/jdk-6u37-linux-x64
export PATH=$JAVA_HOME/bin:$PATH

# 3. Config ccache

ref ccache.sh


# 4. Config PATH

In order to use /sbin/tune2fs for generate system.img, you must  have /sbin in PATH.

