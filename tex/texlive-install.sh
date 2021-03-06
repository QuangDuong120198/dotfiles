#!/usr/bin/bash

CURRENT_FILE_PATH=$(realpath "$0")
CURRENT_DIRECTORY_PATH=$(dirname "$CURRENT_FILE_PATH")

echo "Copying asymptote config..."
if [ ! -d ~/.asy ]; then
  mkdir -p ~/.asy
fi
cp ${CURRENT_DIRECTORY_PATH}/asyconfig.asy ~/.asy/config.asy

echo "Copying latexmkrc..."
cp ${CURRENT_DIRECTORY_PATH}/latexmkrc ~/.latexmkrc

echo "Downloading texlive installer..."
wget -O ~/Downloads/install-tl-unx.tar.gz http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

mkdir -p ~/Downloads/install-tl-latest
rm -rf ~/Downloads/install-tl-latest/install-tl-*
tar -xzf ~/Downloads/install-tl-unx.tar.gz -C ~/Downloads/install-tl-latest
cp ./tex/installation.profile ~/Downloads/install-tl-latest/installation.profile

echo "Installing texlive-full"
cd ~/Downloads/install-tl-latest/install-tl-*
chmod +x ./install-tl
sudo ./install-tl --scheme=scheme-full --profile=../installation.profile

echo "Installing cpan modules for latexindent.pl"
sudo cpan install Log::Log4perl YAML::Tiny File::HomeDir
