# CI/CD Pipeline with Jenkins, Docker, and AWS EC2

## 📌 Project Overview
This project demonstrates a complete CI/CD pipeline to automate application deployment on AWS EC2 using Jenkins and Docker.

## 🛠 Tools & Technologies
- AWS EC2
- Jenkins
- Docker
- GitHub
- CloudWatch

## ⚙️ Pipeline Flow
1. Developer pushes code to GitHub.
2. Jenkins pipeline triggers build.
3. Docker image built and pushed to DockerHub.
4. EC2 pulls image and runs the container.

## 📊 Architecture
GitHub → Jenkins → DockerHub → AWS EC2 → Flask App Available at `<EC2_IP>:5000`

## 🚀 Outcome
- Fully automated deployment.
- Reduced manual work.
- Easy rollback via Docker images.
