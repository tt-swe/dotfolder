# dotfolder

## How to install

### Before executing install.sh

Clone this repository to home directory.

- Check that **GIT_USER_NAME** and **GIT_USER_EMAIL** environment variables are set.
- Check that path to setup git prompt is correctly set. (scripts/install_git/install_git.sh)
- Check that path to setup fzf keybindings is correctly set. (dotfiles/bashrc)

Setting keychain in .profile may be useful.

### Execute install.sh

Execute install.sh (scripts/install.sh) with sudo.

### After executing install.sh

Execute :PlugInstall in neovim.
