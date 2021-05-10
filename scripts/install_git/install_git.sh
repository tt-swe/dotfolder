# execute as non-root user

echo "Setting up git..."

# copy script for git prompt to ~
if [ -e /usr/lib/git-core/git-sh-prompt ]; then
  cp /usr/lib/git-core/git-sh-prompt ~/git-prompt.sh
else
  echo "Warning: git-prompt.sh for PS1 not set."
fi

# copy gitconfig_template to ~/.gitconfig
cp ~/dotfolder/dotfiles/gitconfig_template ~/.gitconfig

# set git user.name and user.email
if [ ! -z $GIT_USER_NAME ] && [ ! -z $GIT_USER_EMAIL ]; then
  echo "Setting user.name to '$GIT_USER_NAME'"
  echo "Setting user.email to '$GIT_USER_EMAIL'"
  git config --global user.name $GIT_USER_NAME
  git config --global user.email $GIT_USER_EMAIL
else
  echo "Warning: user.name and user.email not set."
  git config --global user.name ""
  git config --global user.email ""
fi
