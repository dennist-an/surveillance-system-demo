pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/dennist-an/surveillance-system-demo.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'python3 -m venv venv'
                sh './venv/bin/pip install -r requirements.txt'
            }
        }
        
        stage('Deploy') { 
            steps {
                echo 'Deploying to server...'
                // Example: Deploy using scp or rsync to a remote server
            }
        }
    }
}
