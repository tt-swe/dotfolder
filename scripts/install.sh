#!/bin/bash

# update repository
apt-get update

# fix script directory
SCRIPT_BASE_DIR=$(cd $(dirname $0); pwd)

. $SCRIPT_BASE_DIR/install_packages/install_packages.sh
sudo -u $SUDO_USER bash $SCRIPT_BASE_DIR/install_dotfiles/install_dotfiles.sh
sudo -u $SUDO_USER bash $SCRIPT_BASE_DIR/install_nvim/install_nvim.sh
sudo -u $SUDO_USER -i bash $SCRIPT_BASE_DIR/install_git/install_git.sh
