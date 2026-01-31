# FROM ubuntu:20.04
# RUN apt-get update
# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get install apache2 -y
# COPY index.html /var/www/html/index.html
# EXPOSE 80
# CMD ["apachectl", "-D", "FOREGROUND"]
FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y openjdk-21-jdk wget && \
    apt-get clean
WORKDIR /opt
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.115/bin/apache-tomcat-9.0.115.tar.gz /opt
RUN tar -xzf apache-tomcat-9.0.115.tar.gz
WORKDIR /opt/apache-tomcat-9.0.115/bin
EXPOSE 8080
CMD ["./catalina.sh", "run"]
