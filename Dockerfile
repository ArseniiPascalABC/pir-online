FROM maven:3.9.9-eclipse-temurin-21 AS build
COPY pom.xml /build/
WORKDIR /build/
RUN mvn dependency:go-offline
COPY src /build/src/
RUN mvn package -DskipTests

#Running java
FROM openjdk:21-jdk
ARG JAR_FILE=/build/target/*.jar
COPY --from=build $JAR_FILE /opt/pir-online/vashamama.jar
ENTRYPOINT ["java","-jar","/opt/pir-online/vashamama.jar"]