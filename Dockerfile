FROM openjdk:jdk-11.0.15_10-alpine
COPY target/*.jar spring_built.jar
ENTRYPOINT ["java","-jar","/spring_built.jar"]
