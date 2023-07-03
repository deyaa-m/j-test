#!/bin/bash
set -x
location=~/.ssh/git-key
pub_key=/tmp/pub_key

sudo chmod +x /tmp/*

sudo apt update
sudo apt install git -y

ssh-keyscan github.com >> ~/.ssh/known_hosts

cat ${pub_key} > ~/.ssh/authorized_keys

echo "==================================== ssh key"
echo $location

sleep 5

echo "==================================== clone pub"
chmod 600 $location
if [[ $(GIT_SSH_COMMAND="ssh -vT -i ${location} -o StrictHostKeyChecking=no" git clone git@github.com:deyaa-m/j-test.git) ]]; then
    echo "success"
else
    echo "fail"
fi

sleep 5
#git clone git@github.com:deyaa-m/j-test.git ~/app

ls -al ~/app


