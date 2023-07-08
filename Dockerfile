# Use a Tomcat base image
FROM tomcat:9.0-jdk8-corretto

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file to the container
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port on which Tomcat runs
EXPOSE 8080

# Expose 
WORKDIR /usr/local/tomcat/bin
# Start Tomcat when the container is launched
CMD ["catalina.sh", "run"]
