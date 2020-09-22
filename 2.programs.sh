#!/bin/bash

sudo snap install spotify
sudo snap install slack --classic

sudo snap install notepadqq
sudo snap install code --classic
sudo snap install postman

DEB_FOLDER="DebFiles"

sudo mkdir ${DEB_FOLDER}

sudo wget -O ./${DEB_FOLDER}/discord.deb "https://discord.com/api/download?platform=linux&format=deb"
sudo wget -O ./${DEB_FOLDER}/skype.deb "https://go.skype.com/skypeforlinux-64.deb"

sudo wget -O ./${DEB_FOLDER}/mysql-workbench.deb "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.21-1ubuntu18.04_amd64.deb"
sudo wget -O ./${DEB_FOLDER}/gitkraken.deb "https://release.gitkraken.com/linux/gitkraken-amd64.deb"

sudo apt install ./${DEB_FOLDER}/*.deb -y

sudo rm -Rf ./${DEB_FOLDER}