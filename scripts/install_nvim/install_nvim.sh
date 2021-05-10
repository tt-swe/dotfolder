# execute as non-root user

echo "Installing nvim config files..."

# variables
nvim_targetdir=~/.config/nvim
nvim_newdir=~/dotfolder/dotfiles/config/nvim
nvim_olddir=~/dotfiles_old/config/nvim
nvim_files="config init.vim coc-settings.json"

# mkdir ~/.config/nvim
mkdir -p $nvim_targetdir

# mkdir ~/dotfiles_old/config/nvim
mkdir -p $nvim_olddir

# cd to ~/dotfolder/dotfiles/config/nvim
cd $nvim_newdir

# archive old config files to ~/dotfiles_old/config/nvim and
# create symbolic links for new config files
for nvim_file in $nvim_files; do
  if [ -e $nvim_targetdir/$nvim_file ]; then
    echo "Archiving '$nvim_targetdir/$nvim_file' to '$nvim_olddir'"
    mv $nvim_targetdir/$nvim_file $nvim_olddir
  fi

  echo "Creating symbolic link for '.config/nvim/$nvim_file'"
  ln -s $nvim_newdir/$nvim_file $nvim_targetdir/$nvim_file
done
