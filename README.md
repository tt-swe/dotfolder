# dotfolder

## Target Environments

- Ubuntu 20.04 on WSL2

Most part should also work on normal Ubuntu 20.04.

## Installation Steps

### Pre-Installation

Clone this repository to your home directory.
```
git clone https://github.com/tt-swe/dotfolder.git
```

Copy profile\_template to your home directory as .profile.
```
cp ~/dotfolder/dotfiles/profile_template ~/.profile
```

- Set environment variables GIT\_USER\_NAME and GIT\_USER\_EMAIL in `~/.profile`.
- Set correct path to git prompt script in `~/dotfolder/scripts/install_git/install_git.sh`.
- Set correct path to fzf keybindings script in `~/dotfolder/dotfiles/bashrc`.

### Installation

Execute install.sh with sudo.
```
sudo ~/dotfolder/scripts/install.sh
```

### Post-Installation

Execute `:PlugInstall` in neovim.

### Optional Steps

Setting keychain in .profile may be useful.
