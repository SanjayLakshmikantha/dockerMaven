#FROM tomcat
#COPY MCC.war /usr/local/tomcat/webapps/
#COPY /var/lib/jenkins/workspace/DevOps201/target/MCC.war /usr/local/tomcat/webapps/
#EXPOSE 8080
FROM openjdk:8

# Create DIR
RUN mkdir -p /usr/src/myapp

# COPY APPLICTAION COde
COPY target/*.jar    /usr/src/myapp

# Setup Working DIR
WORKDIR /usr/src/myapp

# Start the Bot Service
CMD ["java", "-jar", "*.jar"]
