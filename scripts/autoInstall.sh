#install git
sudo apt-get update
sudo apt-get install git-core
git --version
#install docker
sudo apt-get update
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update
apt-cache policy docker-engine
sudo apt-get install -y docker-engine
sudo systemctl status docker
#install docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
#install besu
git clone https://github.com/PegaSysEng/besu-quickstart.git
cd besu-quickstart
sudo ./run.sh
