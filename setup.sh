#!/bin/bash

# Install oh-my-posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Install JetBrainsMono fonts
oh-my-posh font install JetBrainsMono

# Append to bashrc users file the oh-my-posh bash init command
echo "eval \"$(oh-my-posh init bash)\"" >> ~/.bashrc

# Create custom theme folder
mkdir ~/.poshcustomthemes

# Get theme to a custom theme folder
sudo wget https://github.com/dimipak/bash-linux/spaceship_dimipak.omp.json -O ~/.poshcustomthemes/dimipak.omp.json

# Add theme to bashrc file
echo "POSH_THEME='~/spaceship_dimipak.omp.json'" >> ~/.bashrc
