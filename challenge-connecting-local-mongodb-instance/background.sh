#! /bin/bash

cd /tmp/
wget https://repo.mongodb.org/apt/ubuntu/dists/focal/mongodb-org/4.4/multiverse/binary-amd64/mongodb-org-server_4.4.10_amd64.deb
wget https://repo.mongodb.org/apt/ubuntu/dists/focal/mongodb-org/4.4/multiverse/binary-amd64/mongodb-org-shell_4.4.10_amd64.deb
wget https://github.com/neelabalan/mongodb-sample-dataset/raw/main/sample_airbnb/listingsAndReviews.json
sudo dpkg -i mongodb-org-*
systemctl start mongod
apt install mongo-tools -y
sleep 3;
mongo localhost:27017/module1 --eval "db.createUser({user:'db_admin', pwd:'gswmongo', roles: [{role: 'userAdmin', db: 'module1'}]})";
mongoimport --drop --host localhost --port 27017 --db module1 --collection reviews --file listingsAndReviews.json
