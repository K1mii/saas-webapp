#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <your-account-id>.dkr.ecr.us-east-1.amazonaws.com
docker pull <your-account-id>.dkr.ecr.us-east-1.amazonaws.com/saas-app:<your-image-tag>
docker run -d -p 80:3000 --restart unless-stopped <your-account-id>.dkr.ecr.us-east-1.amazonaws.com/saas-app:<your-image-tag>
