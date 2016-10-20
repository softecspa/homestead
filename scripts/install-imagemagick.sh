
# Check If Maria Has Been Installed

if [ -f /home/vagrant/.vagrant-imagemagick ]
then
    echo "ImageMagick already installed."
    exit 0
fi

touch /home/vagrant/.vagrant-imagemagick

sudo apt-get install libmagick++-dev
