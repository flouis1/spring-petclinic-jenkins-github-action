pipeline {
    agent any
    environment {
        CI = true
    }
    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                //git 'https://github.com/flouis1/spring-petclinic-jenkins'
                // Build spring packages
                sh "./mvnw package"
            }
            post {
                success {
                    archiveArtifacts 'target/*.jar'
                }
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    sh 'ls -all'
                    docker.build("default-docker-local/spring-petclinic:latest")
                }
            }
        }
        stage('Publish Docker image') {
            steps {
                script {
                    docker.withRegistry('https://flouis1.jfrog.io', 'artifactory-instance') {
                        docker.image("default-docker-local/spring-petclinic:latest").push()
                        //docker.image("default-docker-local/hello-world:${TAG}").push("latest")
                    }
                }
            }
        }
    }
}
