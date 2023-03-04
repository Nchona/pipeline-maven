#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth ubuntu@13.38.87.105:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish ubuntu@13.38.87.105:/tmp/publish
ssh -i /opt/prod ubuntu@13.38.87.105 "/tmp/publish"
