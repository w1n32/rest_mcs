pipeline {
    agent any;
    stages {
        stage('Pakaging to container'){
            steps{
                sh 'docker build -t mcs . && docker tag mcs:latest 197333576876.dkr.ecr.eu-central-1.amazonaws.com/mcs:latest'
            }
         }
        stage('Push container to registry'){
            steps{
                sh 'docker push 197333576876.dkr.ecr.eu-central-1.amazonaws.com/mcs:latest'
            }
        }
    }
    post {
        always {
            sh 'docker rmi mcs'
        }
    }
}
