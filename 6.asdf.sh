#!/bin/bash

# git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

. $HOME/.asdf/asdf.sh

asdf update

asdf plugin add php
asdf plugin add nodejs
asdf plugin add golang
asdf plugin add ruby
asdf plugin add deno

asdf plugin update --all

sudo apt install bison re2c libsqlite3-dev libcurl4-openssl-dev libonig-dev libpq-dev libreadline-dev libzip-dev zlib1g-dev g++ -y

bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

#asdf install php 5.6.0
asdf install php 7.4.0
asdf install nodejs 12.18.4
asdf install nodejs 14.11.0
asdf install golang 1.15.2
asdf install ruby 2.7.1
asdf install deno 1.0.0
asdf install deno 1.4.1

asdf global php 7.4.0
asdf global nodejs 14.11.0
asdf global golang 1.15.2
asdf global ruby 2.7.1
asdf global deno 1.0.0