#!/bin/bash

# install chef
sudo apt-get update
sudo apt-get -y install ohai chef rubygems

sudo chef-solo -c config/solo.rb -j config/node.json
