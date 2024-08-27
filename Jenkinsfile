pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub_credentials')
    }
    stages {
        stage('Daria - Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t psyduck13/daria .'
                }
            }
        }
        stage('Daria - Login to Dockerhub') {
            steps {
                script {
                    sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u psyduck13 --password-stdin'
                }
            }
        }
        stage('Daria - Push image to Dockerhub') {
            steps {
                script {
                    sh 'docker push psyduck13/daria'
                }
            }
        }
    }
}

