# dotfolder

## Installation Steps

### Pre-Installation

Clone this repository to your home directory.
```
git clone https://github.com/tt-swe/dotfolder.git
```

Copy profile\_template to your home directory as .profile.
And set environment variables GIT\_USER\_NAME and GIT\_USER\_EMAIL in .profile.
```
cp ~/dotfolder/dotfiles/profile_template ~/.profile
```

- Set correct path to git prompt script. (~/dotfolder/scripts/install\_git/install\_git.sh)
- Set correct path to fzf keybindings script. (~/dotfolder/dotfiles/bashrc)

### Installation

Execute install.sh with sudo.
```
sudo ~/dotfolder/scripts/install.sh
```

### Post-Installation

Execute `:PlugInstall` in neovim.

### Optional Steps

Setting keychain in .profile may be useful.
