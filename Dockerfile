FROM maven:3.9.9-eclipse-temurin-21 AS builder
EXPOSE 8080
ADD target/docker-jenkins-integration.jar docker-jenkins-integration.jar
ENTRYPOINT [ "java","-jar","/docker-jenkins-integration.jar" ]