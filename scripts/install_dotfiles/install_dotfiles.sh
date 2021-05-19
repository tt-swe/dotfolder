# execute as non-root user

echo "Installing dotfiles..."

# variables
srcdir=~/dotfolder/dotfiles
outdir=~
olddir=~/dotfiles_old
files="bashrc bash_aliases bash_prompt vimrc"

# mkdir ~/dotfiles_old
mkdir -p $olddir

# cd to ~/dotfolder/dotfiles
cd $srcdir

# archive old dotfiles to ~/dotfiles_old and
# create symbolic links for new dotfiles
for file in $files; do
  if [ -e $outdir/.$file ]; then
    echo "Archiving '$outdir/.$file' to '$olddir'"
    mv $outdir/.$file $olddir
  fi

  echo "Creating symbolic link for '.$file'"
  ln -s $srcdir/$file $outdir/.$file
done
