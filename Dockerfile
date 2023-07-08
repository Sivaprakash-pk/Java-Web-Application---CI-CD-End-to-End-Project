FROM tomcat:8.5-jdk8-temurin-focal
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
CMD ["sh", "/usr/local/tomcat/bin/catalina.sh", "start"]
COPY target\*.War /usr/local/tomcat/webapps
