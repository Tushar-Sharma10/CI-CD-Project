pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone your Git repository
                git 'https://github.com/Tushar-Sharma10/CI-CD-Project.git'
            }
        }

        stage('Build') {
            steps {
                // Build the Docker image
                sh 'docker build -t todo-app .'
            }
        }

        stage('Push to Docker Registry') {
            steps {
                // Tag and push the Docker image
                sh 'docker tag todo-app:latest tusharsharma01/todo-app:latest'
                sh 'docker push tusharsharma01/todo-app:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                // Apply Kubernetes deployment and service
                sh 'kubectl apply -f deployment.yml'
                sh 'kubectl apply -f services.yml'
            }
        }
    }
}

