mkdir confmywar
cp ./abs-4.1.0-FR.war ./confmywar/abs-4.1.0-FR.war
cd /confmywar
jar -cvf abs-4.1.0-FR.war .
rm abs-4.1.0-FR.war

change
/opt/tomcat/webapps/abs-4.1.0-FR/WEB-INF/classes/application.properties

cd /opt/tomcat/webapps/confmywar
jar -cvf abs-4.1.0-FR.war .
mv abs-4.1.0-FR.war ../abs-4.1.0-FR.war

service tomcat restart

