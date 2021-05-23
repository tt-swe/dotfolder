# dotfolder

## How to install

### Before executing install.sh

Clone this repository to your home directory.
```
git clone https://github.com/tt-swe/dotfolder.git
```

Copy profile\_template to your home directory as .profile. (~/dotfolder/dotfiles/profile\_template)
```
cp ~/dotfolder/dotfiles/profile_template ~/.profile
```

- Set environment variables GIT\_USER\_NAME and GIT\_USER\_EMAIL.
- Set correct path to git prompt script. (~/dotfolder/scripts/install\_git/install\_git.sh)
- Set correct path to fzf keybindings script. (~/dotfolder/dotfiles/bashrc)

### Execute install.sh

Execute install.sh with sudo. (~/dotfolder/scripts/install.sh)
```
sudo ~/dotfolder/scripts/install.sh
```

### After executing install.sh

Execute `:PlugInstall` in neovim.

### Optional

Setting keychain in .profile may be useful.
