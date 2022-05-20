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
    }
}
