# Deploy a simple nodejs express application on AWS ECS cluster using Jenkins for CICD and Terraform for IaaC
![image](https://github.com/yogendra-kokamkar/Terraform_ECS_Express/blob/main/diagram.jpg)

Here are the step-by-step details to set up an end-to-end Jenkins pipeline for a NodeJS express application using Docker, Terraform, AWS ECR and AWS ECS:

Prerequisites:

   -  NodeJS code hosted on a Git repository
   -  Jenkins server
   -  Docker Server
   -  Terraform Server
   -  AWS Account
   -  Note : For this project, all the servers are setup in a single EC2 instance.
 
 Steps:

    1. Install the necessary Jenkins plugins:
       1.1 Git plugin
       1.2 Terraform plugin
       1.3 Docker plugin
       1.4 AWS ECR plugin
       
    2. Create a new Jenkins pipeline:
       2.1 In Jenkins, create a new pipeline job and configure it with the Git repository URL for the NodeJS application.
       2.2 Add a Jenkinsfile to the Git repository to define the pipeline stages.
     
    3. Configure Jenkins pipeline stages:
        Stage 1: Use the Git plugin to check out the source code from the Git repository.
        Stage 2: Use the Docker plugin to build the Image of the NodeJS application.
        Stage 3: Use Terraform to setup AWS S3 as Backend for .tfstate file and create an Empty AWS ECR Repository.
        Stage 4: Use the Shell Script to push the application image on AWS ECR.
        Stage 5: Use Terraform to create AWS ECS Cluster, Define AWS ECS Tasks, Create AWS ECS Service and refer it to the Tasks.
        Stage 6: Use the Kubernetes Continuous Deploy plugin to deploy the application to a test environment using Helm.
        Stage 7: Use Terraform to Expose the application for user access on public internet via AWS ALB .
     
     4. Run the Jenkins pipeline:
       4.1 Trigger the Jenkins pipeline to start the CI/CD process for the NodeJS application.
       4.2 Monitor the pipeline stages and fix any issues that arise.
       
This end-to-end Jenkins pipeline will automate the entire CI/CD process for a NodeJS application, from code checkout to production deployment, using popular tools like Docker, Terraform, AWS ECR and AWS ECS.
