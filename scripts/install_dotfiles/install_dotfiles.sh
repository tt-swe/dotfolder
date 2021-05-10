# execute as non-root user

echo "Installing dotfiles..."

# variables
targetdir=~
newdir=~/dotfolder/dotfiles
olddir=~/dotfiles_old
files="bashrc bash_aliases bash_prompt vimrc"

# mkdir ~/dotfiles_old
mkdir -p $olddir

# cd to ~/dotfolder/dotfiles
cd $newdir

# archive old dotfiles to ~/dotfiles_old and
# create symbolic links for new dotfiles
for file in $files; do
  if [ -e $targetdir/.$file ]; then
    echo "Archiving '$targetdir/.$file' to '$olddir'"
    mv $targetdir/.$file $olddir
  fi

  echo "Creating symbolic link for '.$file'"
  ln -s $newdir/$file $targetdir/.$file
done
