FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y default-jre
RUN apt-get install -y maven

RUN mkdir -p /usr/fitnesse/
COPY pom.xml /usr/fitnesse/
RUN cd /usr/fitnesse/ && mvn package


ADD init.sh /init.sh
EXPOSE 80

# Define default command
CMD ["/init.sh"]
