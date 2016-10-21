
# Check If Maria Has Been Installed

if [ -f /home/vagrant/.vagrant-imagemagick ]
then
    echo "ImageMagick already installed."
    exit 0
fi

touch /home/vagrant/.vagrant-imagemagick

sudo apt-get install -y libmagick++-dev libmagick++-dev
sudo ln -s /usr/lib/x86_64-linux-gnu/ImageMagick-6.8.9/bin-Q16/Magick++-config /usr/local/bin
