pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/dharmapalkarki123/docker-jenkins-integration.git'
            }
        }

        stage('Maven Build') {
            steps {
                bat 'mvn clean install'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t dharmapaldev/docker-jenkins-integration:latest .'
            }
        }

        stage('Docker Login & Push') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub-cred', url: 'https://index.docker.io/v1/']) {
                    bat 'docker push dharmapaldev/docker-jenkins-integration:latest'
                }
            }
        }
    }
}