#!/bin/bash

DRACULA_FOLDER=DraculaTheme

mkdir ${DRACULA_FOLDER}

sudo wget -O ./${DRACULA_FOLDER}/dracula.zip "https://github.com/dracula/zsh/archive/master.zip"

sudo unzip ./${DRACULA_FOLDER}/dracula.zip -d ./${DRACULA_FOLDER}/

sudo mv ./${DRACULA_FOLDER}/zsh-master/dracula.zsh-theme $HOME/.oh-my-zsh/themes/
sudo mv ./${DRACULA_FOLDER}/zsh-master/lib $HOME/.oh-my-zsh/themes/

sudo rm -Rf ./${DRACULA_FOLDER}

sudo cp .zshrc.original .zshrc

sudo sed -i "s/_USER_/$USER/g" .zshrc

sudo rm -Rf $HOME/.zshrc
sudo cp .zshrc $HOME/.zshrc

sudo rm -Rf .zshrc