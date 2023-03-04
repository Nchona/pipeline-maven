#!/bin/bash

echo "********************"
echo "** Psuhing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u nchoana69 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG nchoana69/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push nchoana69/$IMAGE:$BUILD_TAG


