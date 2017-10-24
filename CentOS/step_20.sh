sudo systemctl daemon-reload;
sudo systemctl start tomcat;
sudo systemctl status tomcat;
sudo systemctl enable tomcat;
# additional tools for tomcat
sudo yum install -y tomcat-admin-webapps.noarch tomcat-docs-webapp.noarch tomcat-javadoc.noarch tomcat-systemv.noarch tomcat-webapps.noarch;

sudo firewall-cmd --permanent --add-port=8080/tcp;
sudo systemctl restart firewalld;

#download ABS .war
cd /opt/tomcat/webapps
#sudo wget http://download.axelor.com/abs/abs-4.1.0-FR.war

#here



sudo service tomcat restart
