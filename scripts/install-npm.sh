
# Check If Maria Has Been Installed

if [ -f /home/vagrant/.vagrant-npm ]
then
    echo "NPM packages already installed."
    exit 0
fi

touch /home/vagrant/.vagrant-npm

sudo npm install -g node-gyp
sudo npm install -g sails@~0.11.0 # fixed the version for dm-s2sc
sudo npm install -g phantom
sudo npm install -g phantomjs
sudo npm install -g forever
sudo npm install -g nodemon
