FROM tomcat:9.0.73-jdk11-openjdk-slim
LABEL maintainer="Yogi"
LABEL description="Supermario application Docker image"
#Remove the default webapps
RUN rm -rf /usr/local/tomcat/webapps/ROOT/*
#Copy the war file to the webapps directory
COPY webapp/ /usr/local/tomcat/webapps/ROOT/
# Change default shell to bash
RUN ln -sf /bin/bash /bin/sh
# Expose the port on which Tomcat runs
EXPOSE 8080
# Set the cmd to start Tomcat
CMD ["catalina.sh", "run"]