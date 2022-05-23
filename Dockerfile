FROM openjdk:19-jdk-alpine3.15
COPY target/*.jar spring_built.jar
CMD ["java","-jar","/spring_built.jar"]
CMD ["sleep", "infinity"]
