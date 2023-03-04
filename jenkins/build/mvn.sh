#!/bin/bash 

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm  -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:latest mvn -B -DskipTests clean package


#"$@" for passing arguements in scritping 

