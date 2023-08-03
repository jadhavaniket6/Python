pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // This step will checkout the code from the Git repository
                git 'https://github.com/jadhavaniket6/Python.git'
            }
        }
        
        stage('Build') {
            steps {
                // Add any necessary build steps here (e.g., installing dependencies)
                sh '/Users/aniket/anaconda3/bin/pip install -r requirements.txt'
            }
        }
        
        
        stage('Deploy') {
            steps {
                // Add any necessary deployment steps here (e.g., starting the Flask app)
                sh '/Users/aniket/anaconda3/bin/python app.py'
            }
        }
    }
}
