# Job Done in this project
## Setup jenkins
### Version
2.332.3
### Plugins
List of plugin used:
 - GitHub plugin (github): 1.34.3
 - Docker plugin (docker-plugin): 1.2.9
 - Artifactory Plugin (artifactory): 3.16.2
 - docker-build-step (docker-build-step): 2.8
 - Blue Ocean (blueocean): 1.25.5
### Actifactory setup
To configure your JFrog Platform instance Use this [Documentation](https://www.jfrog.com/confluence/display/JFROG/Configuring+Jenkins+Artifactory+Plug-in)

### Jenkins Pipeline
#### Configure the Source Code Manager(SCM)
![image](https://user-images.githubusercontent.com/13024656/170005972-adf4b83d-e398-4d0f-bce0-24973c6ca19a.png)

### Configure the Script path
![image](https://user-images.githubusercontent.com/13024656/170006238-474bd2ef-e8e6-413f-aa1a-d6958343ce65.png)

### Pipeline
![image](https://user-images.githubusercontent.com/13024656/170006668-89df9331-ca0d-4263-8c22-e5b4860b9038.png)

### Docker config
#### Dockerfile
```
FROM openjdk:19-jdk-alpine3.15
EXPOSE 8080
COPY target/*.jar /spring_built.jar
CMD ["java","-jar","/spring_built.jar"]
```
#### Use the docker image
```
docker run -d -p 8080:8080 flouis1.jfrog.io/default-docker-local/spring-petclinic:latest
```

[spring-petclinic-readme]:(https://github.com/flouis1/spring-petclinic-jenkins/blob/main/spring_readme.md)
