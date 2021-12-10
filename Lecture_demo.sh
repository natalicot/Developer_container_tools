#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m'

clear

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}Let's Start getting familiar with buildah and podman ${NC}\n"
read -n 1 -s -r 

echo -e '\n      ------------------------------------------------------     \n'
echo -e "\n${GREEN}make sure podman is installed ${NC}\n"
sleep 2

echo podman --version
read -n 1 -s -r
sudo podman --version

echo -e '\n      ------------------------------------------------------     \n'
echo -e "\n${GREEN}make sure buildah is installed ${NC}\n"
sleep 2

echo buildah --version
read -n 1 -s -r
sudo buildah --version
read -n 1 -s -r

clear

echo -e '\n      ------------------------------------------------------     \n'
echo -e "\n${GREEN}Lets build our own image, with the following Docker file: ${NC}\n"
sleep 4

echo 'Dockerfile:'
cat Dockerfile
read -n 1 -s -r

clear

echo -e '\n\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}Building the image in the localhost repo, name: my_demo_app tag 1.0.0 ${NC}\n"
sleep 3

echo buildah bud -t my_demo_app:1.0.1 .
read -n 1 -s -r 
sudo buildah bud -t my_demo_app:1.0.1 .

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}Lets check the image was succesfully build ${NC}\n"
sleep 3

echo buildah images
read -n 1 -s -r 
sudo buildah images
read -n 1 -s -r


clear

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}Using podman to run our image ${NC}\n"
sleep 4

echo podman run --name mycontainer -d -p 8081:8080 localhost/my_demo_app:1.0.1
read -n 1 -s -r 
sudo podman run --name mycontainer -d -p 8081:8080 localhost/my_demo_app:1.0.1

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}Checking the running container ${NC}\n"
sleep 4

echo podman ps
read -n 1 -s -r 
sudo podman ps
read -n 1 -s -r

clear

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}runnig portainer for visualisation ${NC}\n"
sleep 4

echo podman run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /run/podman/podman.sock:/var/run/docker.sock -v portainer_data:/data cr.portainer.io/portainer/portainer-ce:2.9.3
read -n 1 -s -r
sudo podman run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /run/podman/podman.sock:/var/run/docker.sock -v portainer_data:/data cr.portainer.io/portainer/portainer-ce:2.9.3

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}Checking the running container ${NC}\n"
sleep 4

echo podman ps
read -n 1 -s -r
sudo podman ps


echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}checkout portainer: https://localhost:9443 ${NC}\n"
read -n 1 -s -r

clear

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}WE can now use podman to help us get to kubernetes ${NC}\n"
sleep 4

echo 'podman generate kube mycontainer > mycontainer.yml'
read -n 1 -s -r 
sudo podman generate kube mycontainer > mycontainer.yml

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}Lets see the created YML ${NC}\n"
sleep 4

echo 'mycontainer.yml:'
read -n 1 -s -r
cat mycontainer.yml
read -n 1 -s -r

clear

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}Lets deploy our pod into our k8s cluster ${NC}\n"
sleep 2

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}switch context ${NC}\n"
sleep 4

echo 'kubectx rancher-desktop'
read -n 1 -s -r
kubectx rancher-desktop


echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}validate context ${NC}\n"
sleep 4

echo 'kubectx --current'
read -n 1 -s -r
kubectx kubectx --current
read -n 1 -s -r

clear

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}create a namespace for our app ${NC}\n"
sleep 4

echo 'kubectl create namespace app'
read -n 1 -s -r
kubectl create namespace app

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}Apply our YML into the cluster ${NC}\n"

echo 'kubectl apply -f mycontainer.yml -n app'
read -n 1 -s -r
kubectl apply -f mycontainer.yml -n app

echo -e '\n      ------------------------------------------------------     \n'

echo -e "\n${GREEN}checkout Lens ${NC}\n"
read -n 1 -s -r

echo -e '\n      ------------------------------------------------------     \n'

clear

echo -e "\n${GREEN}cleanup ${NC}\n"

echo podman rm -f $(sudo podman ps -q -a)
echo buildah rmi --all
echo kubectl delete -f mycontainer.yml
echo kubectl delete namespace app

sudo podman rm -f $(sudo podman ps -q -a)
sudo buildah rmi --all
kubectl delete -f mycontainer.yml
kubectl delete namespace app

echo 'done :)'