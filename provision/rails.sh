#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y redis-server
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
sudo apt-get install -y libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
curl -sSL https://rvm.io/mpapis.asc | gpg --import
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.2.3
rvm use 2.2.3 --default
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
git config --global color.ui true
git config --global user.name "Corey McClelland"
git config --global user.email "corey@wordfinder.io"
 
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
export rvmsudo_secure_path=1
gem update --system 2.0.3
sudo apt-get install -y libgmp3-dev
gem install rails -v 4.2.4

