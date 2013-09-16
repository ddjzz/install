
#!/bin/bash 

# 用PPA的第三方源将IBus升级的方法:

sudo add-apt-repository ppa:shawn-p-huang/ppa
sudo apt-get update
sudo apt-get install -y ibus-gtk ibus-qt4 ibus-pinyin ibus-pinyin-db-open-phrase

