packages="curl git gzip unzip tar keychain fzf ripgrep fd-find tree"

apt-get install $packages

# install bat
# if ripgrep is installed via apt
# then bat currently cannot be installed via apt
curl -fLo /tmp/bat_0.18.1_amd64.deb \
  https://github.com/sharkdp/bat/releases/download/v0.18.1/bat_0.18.1_amd64.deb

dpkg -i /tmp/bat_0.18.1_amd64.deb

rm /tmp/bat_0.18.1_amd64.deb
