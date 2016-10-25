
# Check If Maria Has Been Installed

if [ -f /home/vagrant/.vagrant-ubuntu ]
then
    echo "Ubuntu packages already installed."
    exit 0
fi

touch /home/vagrant/.vagrant-ubuntu

sudo apt-get install build-essential chrpath libssl-dev libxft-dev
sudo apt-get install libfreetype6 libfreetype6-dev
sudo apt-get install libfontconfig1 libfontconfig1-dev
