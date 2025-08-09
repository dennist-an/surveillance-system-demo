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
                sh 'scp -o StrictHostKeyChecking=no -r /var/lib/jenkins/workspace/surveillance-pipeline dennistan@192.168.20.2:/var/www/'
                sh 'python3 /var/www/surveillance-pipeline/app.py'
            }
        }
    }
}
