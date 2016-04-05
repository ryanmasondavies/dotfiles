#!/bin/sh
#
# Oh My Zsh
#
# This installs Oh My Zsh if it isn't already installed.

# Check for Oh My Zsh folder
OH_MY_ZSH=$(cd ~/.oh-my-zsh && pwd)
if [ ! -d ${OH_MY_ZSH} ];
then
  echo "  Installing Oh My Zsh for you."
	
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	
	# Move default zshrc to make room for symlink
	mv ~/.zshrc ~/.zshrc-default
fi

exit 0
