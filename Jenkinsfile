pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git 'YOUR_GITHUB_REPO_URL'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t mywebsite .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker rm -f mywebsite-container || true
                docker run -d -p 8081:80 --name mywebsite-container mywebsite
                '''
            }
        }
    }
}
