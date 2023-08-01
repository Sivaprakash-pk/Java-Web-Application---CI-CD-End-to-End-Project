# Use a Tomcat base image
FROM tomcat:8.0-alpine
# Copy the WAR file to the container
COPY Example-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps
# Expose the port on which Tomcat runs
EXPOSE 8080
# Start Tomcat when the container is launched
CMD ["catalina.sh", "run"]
