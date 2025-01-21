#!bin/bash

sudo apt update 

sudo apt install openjdk-8-jdk -y

https://pkg.jenkins.io/
https://pkg.jenkins.io/debian-stable/

sudo systemctl start jenkins

sudo systemctl enable jenkins

sudo systemctl status jenkins



## Installing Docker

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh


# giving docker access to user
sudo usermod -aG docker $USER
# giving docker access to user
sudo usermod -aG docker jenkins

# creating new group
newgrp docker
# installation of aws configure to get the permission
sudo apt install awscli -y

# adding to the grup
sudo usermod -a -G docker jenkins

# next is to create IAM user inside that we can give policies like admin access and the services we wiil
# be using ecr, ec2


## AWS configuration & restarts jenkins

aws configure
# create an ecr repo

## Now setup elastic IP on AWS



## For getting the admin password for jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
