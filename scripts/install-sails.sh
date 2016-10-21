
# Check If Maria Has Been Installed

if [ -f /home/vagrant/.vagrant-sails ]
then
    echo "Sails already installed."
    exit 0
fi

touch /home/vagrant/.vagrant-sails

sudo npm install -g sails@~0.11.0
