#!/bin/bash

#step 1
sudo apt-get -y -q update
sudo apt-get -y -q install curl
\curl -L https://get.rvm.io | bash -s stable
source ~vagrant/.rvm/scripts/rvm
rvm requirements

# step 2
rvm install ruby-2.1.2
rvm use 2.1.2 --default

# step 3 
rvm rubygems current

sudo gem install rspec