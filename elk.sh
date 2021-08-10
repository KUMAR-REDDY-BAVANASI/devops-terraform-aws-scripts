# #!/bin/bash
# sudo wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
# sudo apt-get install apt-transport-https
# sudo echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list
# sudo apt-get update && sudo apt-get install elasticsearch
# sudo systemctl start elasticsearch
# ps –ef | grep elasticsearch
# netstat –anlp | grep “:9300”
# # cat <<EOT> /etc/elasticsearch/elasticsearch.yml
# # network.host : 0.0.0.0
# # discovery.type: single-node
# # EOT
# # sudo systemctl restart elasticsearch










# sudo su -
# #Import the Elasticsearch PGP Key
# wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
# #Installing from the APT repository
# sudo apt-get install apt-transport-https
# #Save the repository definition to /etc/apt/sources.list.d/elastic-7.x.list:
# echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list
# #You can install the Elasticsearch Debian package with:
# sudo apt-get update && sudo apt-get install elasticsearch
# #Download and install the Debian package manually
# wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.11.1-amd64.deb
# wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.11.1-amd64.deb.sha512
# shasum -a 512 -c elasticsearch-7.11.1-amd64.deb.sha512 
# sudo dpkg -i elasticsearch-7.11.1-amd64.deb
# #SysV init vs systemd
# #Elasticsearch is not started automatically after installation. How to start and stop Elasticsearch depends on whether your system uses SysV init or systemd (used by newer distributions). You can tell which is being used by running this command:
# ps -p 1
# #Use the update-rc.d command to configure Elasticsearch to start automatically when the system boots up:
# sudo update-rc.d elasticsearch defaults 95 10
# #Elasticsearch can be started and stopped using the service command:
# sudo -i service elasticsearch start
# sudo -i service elasticsearch stop
# #Running Elasticsearch with systemd
# #To configure Elasticsearch to start automatically when the system boots up, run the following commands:
# sudo /bin/systemctl daemon-reload
# sudo /bin/systemctl enable elasticsearch.service
# sudo systemctl start elasticsearch.service