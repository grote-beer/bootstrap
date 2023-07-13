#installeer docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

#creeer docker netwerk
sudo docker network create \
 --subnet=10.0.0.0/24 \
 --ip-range=10.0.0.0/24 \
 --gateway=10.0.0.1 \
 cjv-network
 
 
 sudo usermod -aG docker $USER