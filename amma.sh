#!/bin/bash
apt-get update -y
apt install apache2 -y
systemctl start apache2
systemctl enable apache2
systemctl status apache2
ps -ef | grep apache2
curl -I http://localhost:80

