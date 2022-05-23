FROM openjdk:19-jdk-alpine3.15
EXPOSE 8080
COPY target/*.jar /spring_built.jar
CMD ["java","-jar","/spring_built.jar"]
