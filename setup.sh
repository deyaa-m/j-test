#!/bin/bash
set -x
location=~/.ssh/git-key

sudo apt update
sudo apt install git -y

ssh-keyscan github.com >> ~/.ssh/known_hosts

echo "==================================== ssh key"
echo $location

sleep 5

echo "==================================== clone pub"
git clone https://github.com/deyaa-m/j-test.git ~/app

ls -al ~/app


