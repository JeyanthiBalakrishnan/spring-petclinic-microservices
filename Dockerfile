FROM openjdk:8-jdk-alpine

VOLUME /tmp

COPY spring-petclinic-customers-service/target/spring-petclinic-customers-service-2.5.1.jar  spring-petclinic-customers-service-2.5.1.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-petclinic-customers-service-2.5.1.jar"]