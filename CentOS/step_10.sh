# create a new user - change user/password to to what you want
adduser axel;
passwd axel;
gpasswd -a axel wheel;

sudo yum install nano;
sudo yum update -y;
sudo yum install -y unzip;
sudo yum install -y  mlocate;
sudo yum install -y  net-tools;
sudo yum install -y maven;

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.rpm";
sudo yum -y localinstall jdk-8u151-linux-x64.rpm;

 export JAVA_HOME=/usr/java/jdk1.8.0_151;
export PATH=$JAVA_HOME/bin:$PATH;

 wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip;

#install postgresql
#----------------------------------------------------------
# VERSION 1
#----------------------------------------------------------
# sudo yum install -y postgresql-server postgresql-contrib;
# sudo postgresql-setup initdb;
# sudo vi /var/lib/pgsql/data/pg_hba.conf;
# sudo systemctl start postgresql;

#----------------------------------------------------------
# VERSION 2 : POSTSGRESQL 9.5
#----------------------------------------------------------
yum install -y https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm
yum install postgresql95-server postgresql95 -y
yum install php-pgsql -y
/usr/pgsql-9.5/bin/postgresql95-setup initdb
sudo systemctl start postgresql-9.5.service
systemctl enable postgresql-9.5.service

yum install -y git;
yum install -y mlocate;

cd ~;
sudo wget http://apache.crihan.fr/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz;
sudo mkdir /opt/tomcat;
sudo tar xvf apache-tomcat-7*tar.gz -C /opt/tomcat --strip-components=1;
cd /opt/tomcat;
sudo groupadd tomcat;
sudo useradd -M -s /bin/nologin -g tomcat -d /opt/tomcat tomcat;
sudo chgrp -R tomcat /opt/tomcat;

sudo chmod -R g+r conf;
sudo chmod g+x conf;
sudo chown -R tomcat webapps/ work/ temp/ logs/;

# sudo vi /etc/systemd/system/tomcat.service
