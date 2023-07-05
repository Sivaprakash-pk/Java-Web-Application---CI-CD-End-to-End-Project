FROM tomcat:9.0-alpine
COPY target/*.war /usr/local/tomcat/webapps/SampleWebApp.war
EXPOSE 8080
CMD ["bin/catalina.sh", "run"]
