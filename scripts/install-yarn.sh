
# Check If Maria Has Been Installed

if [ -f /home/vagrant/.vagrant-yarn ]
then
    echo "Yarn already installed."
    exit 0
fi

touch /home/vagrant/.vagrant-yarn

apt-key adv --keyserver pgp.mit.edu --recv D101F7899D41F3C3
echo "deb http://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update 
sudo apt-get install -y yarn
