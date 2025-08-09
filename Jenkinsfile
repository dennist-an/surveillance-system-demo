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
                sh 'ssh -o StrictHostKeyChecking=no dennistan@192.168.20.2 "rm -rf /var/www/surveillance-pipeline/"'
                sh 'scp -o StrictHostKeyChecking=no -r /var/lib/jenkins/workspace/surveillance-pipeline dennistan@192.168.20.2:/var/www/'
                sh 'ssh -o StrictHostKeyChecking=no dennistan@192.168.20.2 "/var/www/surveillance-pipeline/startup.sh"'
            }
        }
    }
}
