#/usr/bin/bash

# AUTOMATE THE WHOLE PROCESS

docker login

IMAGE="$1"
IMAGE_SIGN="$2"

echo Starting Script, tagging $IMAGE to $IMAGE_SIGN . . .

echo Pushing $IMAGE to $IMAGE_SIGN

docker tag $IMAGE $IMAGE_SIGN

docker push $IMAGE_SIGN

echo "### Just press enter if there is no password of private key, however its better to set a password."

cosign sign --key cosign.key $IMAGE_SIGN

cosign verify --key cosign.pub $IMAGE_SIGN



#./script redis:latest dockeruser99177/silly-demo:redis
#./script any_image repo_user/repo_name:any_image
