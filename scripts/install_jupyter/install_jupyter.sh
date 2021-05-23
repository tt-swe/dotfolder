# execute as non-root user

echo "Installing jupyter config files..."

# variables
jupyter_srcdir=~/dotfolder/dotfiles/jupyter
jupyter_outdir=~/.jupyter
jupyter_olddir=~/dotfiles_old/jupyter
jupyter_files="jupyter_notebook_config.py"

# mkdir ~/.jupyter
mkdir -p $jupyter_outdir

# mkdir ~/dotfiles_old/jupyter
mkdir -p $jupyter_olddir

# cd to ~/dotfolder/dotfiles/jupyter
cd $jupyter_srcdir

for jupyter_file in $jupyter_files; do
  if [ -e $jupyter_outdir/$jupyter_file ]; then
    echo "Archiving '$jupyter_outdir/$jupyter_file' to '$jupyter_olddir'"
    mv $jupyter_outdir/$jupyter_file $jupyter_olddir
  fi

  echo "Creating symbolic link for '.jupyter/$jupyter_file'"
  ln -s $jupyter_srcdir/$jupyter_file $jupyter_outdir/$jupyter_file
done
