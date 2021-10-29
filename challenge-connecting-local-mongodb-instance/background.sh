#! /bin/bash

cd /tmp/
wget https://repo.mongodb.org/apt/ubuntu/dists/focal/mongodb-org/4.4/multiverse/binary-amd64/mongodb-org-server_4.4.10_amd64.deb
wget https://repo.mongodb.org/apt/ubuntu/dists/focal/mongodb-org/4.4/multiverse/binary-amd64/mongodb-org-shell_4.4.10_amd64.deb
sudo dpkg -i mongodb-org-*
systemctl start mongod
sleep 5;

mongo localhost:27017/module1 --eval "db.createUser({user:'read_user', pwd:'gswmongo', roles: ['read']})";
