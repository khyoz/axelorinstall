 #version 0.10
 mkdir confmywar
cp ./abs-4.1.0-FR.war ./confmywar/abs-4.1.0-FR.war
cd /confmywar

rm abs-4.1.0-FR.war

change
/opt/tomcat/webapps/abs-4.1.0-FR/WEB-INF/classes/application.properties

cd /opt/tomcat/webapps/confmywar
jar -cvf abs-4.1.0-FR.war .
mv abs-4.1.0-FR.war ../abs-4.1.0-FR.war

service tomcat restart

#version 0.11
#sudo wget http://download.axelor.com/abs/abs-4.1.0-FR.war
download from http://download.axelor.com/abs/abs-4.1.0-FR.war
decompress and change application.properties (see step 35.readme)
then upload with either tomcat application manager or ftp into /opt/tomcat/webapps
restart tomcat (to check if necessary)
