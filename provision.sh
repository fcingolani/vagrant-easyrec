#!/bin/bash

sudo apt-get update;
sudo apt-get -y install aptitude;

# Database

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password qwe123';
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password qwe123';
sudo aptitude -y install mysql-server;
sudo aptitude -y install mysql-client;

sudo mysql -pqwe123 < /vagrant/create-database.sql;

sudo cp /vagrant/easyrec.cnf /etc/mysql/conf.d/;

sudo service mysql restart;

# Java

sudo aptitude -y install python-software-properties;
sudo aptitude -y install software-properties-common;

sudo add-apt-repository ppa:webupd8team/java;
sudo apt-get update;

echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections;

sudo aptitude -y install oracle-java7-installer;

sudo update-java-alternatives -s java-7-oracle;

sudo aptitude -y install oracle-java7-set-default;

# Web Server

sudo aptitude -y install tomcat7 tomcat7-admin;

# EasyRec

sudo aptitude -y install wget;
wget -O easyrec_0.98.zip "http://downloads.sourceforge.net/project/easyrec/easyrec_0.98.zip?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Feasyrec%2Ffiles%2F&ts=1409942860&use_mirror=ufpr";

sudo aptitude -y install unzip;
unzip "easyrec_0.98.zip";

sudo cp easyrec-web.war /var/lib/tomcat7/webapps/;
