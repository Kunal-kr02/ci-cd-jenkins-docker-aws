pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "kunalkumarjha9991@gmail.com/devops-cicd"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/yourusername/ci-cd-jenkins-docker-aws.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_IMAGE .'
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }

        stage('Deploy to EC2') {
            steps {
                sh 'ssh -o StrictHostKeyChecking=no ec2-user@<EC2_PUBLIC_IP> "docker pull $DOCKER_IMAGE && docker run -d -p 5000:5000 $DOCKER_IMAGE"'
            }
        }
    }
}
