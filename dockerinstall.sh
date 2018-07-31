curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#update the packages
sudo apt-get update
apt-cache policy docker-ce
#install the docker 
sudo apt-get install -y docker-ce
#status of the docker
sudo systemctl status docker
#add a user named docker
sudo usermod -aG docker ${USER}
su - ${USER}
#command to check whether the docker is installed or not
docker info
