FROM openjdk:17-oracle

EXPOSE 8080

ARG artifact=target/spring-boot-docker.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]

