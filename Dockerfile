# Use a Tomcat base image
FROM tomcat:8.0-alpine
# Copy the WAR file to the container
COPY target/*.war /usr/local/tomcat/webapps/app.war
# Expose the port on which Tomcat runs
EXPOSE 8080
# Start Tomcat when the container is launched
CMD ["catalina.sh", "run"]
