
# Check If Maria Has Been Installed

if [ -f /home/vagrant/.vagrant-ubuntu ]
then
    echo "Ubuntu packages already installed."
    exit 0
fi

#touch /home/vagrant/.vagrant-ubuntu

sudo apt-get install -y build-essential chrpath libssl-dev libxft-dev
sudo apt-get install -y libfreetype6 libfreetype6-dev
sudo apt-get install -y libfontconfig1 libfontconfig1-dev
sudo apt-get install -y nginx
sudo apt-get install -y php5-fpm
sudo apt-get install -y nodejs 
sudo apt-get install -y npm
