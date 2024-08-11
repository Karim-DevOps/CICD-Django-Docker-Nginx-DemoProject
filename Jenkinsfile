pipeline {
    agent { label 'staging' }
    stages {
        stage('Down Containers If Exist!') {
            steps {
                sh 'docker-compose down'
            }
        }
        stage('Build Stage') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('Deploy Stage') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}