# install neovim
apt-get install neovim

# install vim-plug
sudo -u $SUDO_USER bash -c "curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

# install colorscheme
sudo -u $SUDO_USER bash -c "curl -fLo ~/.local/share/nvim/site/colors/apprentice.vim --create-dirs \
  https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim"
