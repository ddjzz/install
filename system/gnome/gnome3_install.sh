

# 安装Gnome-shell:首先添加PPA

sudo add-apt-repository ppa:gnome3-team/gnome3
sudo add-apt-repository ppa:ricotz/testing



# 然后执行安装

sudo apt-get update
sudo apt-get install -y gnome-shell		# 安装Gnome-shell 桌面
sudo apt-get install -y gnome-shell-extensions	# 安装extensions
sudo apt-get install -y gnome-tweak-tool		# 安装配置工具

# 完成后Log out,在登陆的时候选择Gnome即可。



# 其他可选的桌面环境:
# Gnome Classic (Gnome 2.x的桌面)
sudo apt-get install -y gnome-panel


