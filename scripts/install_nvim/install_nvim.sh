# execute as non-root user

echo "Installing nvim config files..."

# variables
nvim_srcdir=~/dotfolder/dotfiles/config/nvim
nvim_outdir=~/.config/nvim
nvim_olddir=~/dotfiles_old/config/nvim
nvim_files="config init.vim coc-settings.json"

# mkdir ~/.config/nvim
mkdir -p $nvim_outdir

# mkdir ~/dotfiles_old/config/nvim
mkdir -p $nvim_olddir

# cd to ~/dotfolder/dotfiles/config/nvim
cd $nvim_srcdir

# archive old config files to ~/dotfiles_old/config/nvim and
# create symbolic links for new config files
for nvim_file in $nvim_files; do
  if [ -e $nvim_outdir/$nvim_file ]; then
    echo "Archiving '$nvim_outdir/$nvim_file' to '$nvim_olddir'"
    mv $nvim_outdir/$nvim_file $nvim_olddir
  fi

  echo "Creating symbolic link for '.config/nvim/$nvim_file'"
  ln -s $nvim_srcdir/$nvim_file $nvim_outdir/$nvim_file
done
