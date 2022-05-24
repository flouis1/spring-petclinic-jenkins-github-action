pipeline {
    agent any
    environment {
        CI = true
    }
    stages {
        stage('Build') {
            steps {
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
                    docker.withRegistry('https://flouis1.jfrog.io', 'arti_server') {
                        docker.image("default-docker-local/spring-petclinic:latest").push()
                    }
                }
            }
        }
    }
}
