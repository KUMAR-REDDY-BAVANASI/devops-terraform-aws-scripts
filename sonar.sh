# #!/bin/bash
# sudo apt-get update -y
# sudo apt-get upgrade -y
# #next  then install wget and unzip package
# sudo apt-get  install wget unzip  -y
# #Install OpenJDK and JRE 11 using following command
# sudo apt-get install openjdk-11-jdk -y
# sudo apt-get install openjdk-11-jre  -y
# sudo update-alternatives --config java
# #To check java version
# java –version 
# #Install and Setup PostgreSQL 10 Database For SonarQube
# # sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
# # wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
# # sudo apt-get -y install postgresql postgresql-contrib
# # sudo systemctl start postgresql
# # sudo systemctl enable postgresql
# # sudo passwd postgres
# # #set the password in postgreSQL user  
# # Enter new UNIX password:admin@123
# # Retype new UNIX password:admin@123
# # #Switch to the postgres user
# # su  - postgres
# # #Create a new user by typing
# # createuser sonar
# # #Switch to the PostgreSQL shell
# # psql

# # #psql (10.16 (Ubuntu 10.16-0ubuntu0.18.04.1))
# # #Type "help" for help.
# # #Set a password for the n.ewly created user for SonarQube database
# # ALTER USER sonar WITH ENCRYPTED password 'sonar';
# # #Create a new database for PostgreSQL database by running
# # CREATE DATABASE sonarqube OWNER sonar;
# # #grant all privileges to sonar user on sonarqube Database
# # grant all privileges on DATABASE sonarqube to sonar;
# # #Exit from the psql shell
# # \q
# # Switch back to the sudo user by running the exit command
# #  exit
# #Download sonaqube installer files archieve To download latest version of visit SonarQube
# cd /tmp
#  sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.9.5.zip
# #Unzip the archeve setup to /opt directory.

# sudo unzip sonarqube-7.9.5.zip 
# # Move extracted setup to /opt/sonarqube directory.
# sudo mv /opt/sonarqube-7.9.5 /opt/sonar
# #Create a group as sonar
# cd /opt
# sudo groupadd sonar
# sudo useradd -c "user to run SonarQube" -d /opt/sonar -g sonar sonar
# sudo chown 700 sonar
# cp /opt/sonar/conf/sonar.properties /root/sonar.properties_backup
# sudo vim /opt/sonar/conf/sonar.properties
# sonar.jdbc.username=sonar
# sonar.jdbc.password=sonar
# #6Edit the sonar script file and set RUN_AS_USER
# sudo vim  /opt/sonar/bin/linux-x86-64/sonar.sh
# RUN_AS_USER=sonar
# sudo su sonar
# cd /opt/sonar/bin/linux-x86-64/
# #Run the script to start SonarQube.
# ./sonar.sh start
# ./sonar.sh status