#!/bin/bash

repoURI=`aws ecr describe-repositories --query "repositories[].[repositoryUri]" --output text`
regID=`aws ecr describe-repositories --query "repositories[].[registryId]" --output text`
reponame=`aws ecr describe-repositories --query "repositories[].[repositoryName]" --output text`

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin $repoURI

docker tag expressapp:latest $regID.dkr.ecr.ap-south-1.amazonaws.com/$reponame:latest

docker push $regID.dkr.ecr.ap-south-1.amazonaws.com/$reponame:latest