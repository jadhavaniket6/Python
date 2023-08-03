pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'curl -fsSL https://get.docker.com -o get-docker.sh'
                    sh 'sh get-docker.sh'
                    sh 'usermod -aG docker jenkins'
                    sh 'systemctl enable docker'
                    sh 'systemctl start docker'
                    // Build the Docker image
                    sh 'docker build -t my-flask-app .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container
                    sh 'docker run -d -p 5500:5000 my-flask-app'
                }
            }
        }
    }
}
