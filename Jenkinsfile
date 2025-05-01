pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("portfolio-website:latest")
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Stop any running container
                    sh 'docker-compose down || true'
                    // Start container in detached mode
                    sh 'docker-compose up -d'
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
