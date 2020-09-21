#!/bin/bash

sudo apt update -y
sudo apt dist-upgrade -y

DEPENDENCIES=(
	build-essential
	default-jdk
	libssl-dev
	exuberant-ctags
	ncurses-term
	ack-grep
	silversearcher-ag
	fontconfig
	imagemagick
	libmagickwand-dev
	software-properties-common
	git
	curl
	wget
	nano
	snapd
	neofetch
	sed
)

for program in ${DEPENDENCIES[@]}; do
	sudo apt install "$program" -y
done
