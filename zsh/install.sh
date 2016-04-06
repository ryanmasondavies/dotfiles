#!/bin/sh
#
# Oh My Zsh
#
# This installs Oh My Zsh if it isn't already installed.

# Check for Oh My Zsh folder
OH_MY_ZSH="$HOME/.oh-my-zsh"
if [ ! -d $OH_MY_ZSH ];
then
  echo "  Installing Oh My Zsh for you."

	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	# Move default zshrc to make room for symlink
	mv ~/.zshrc ~/.zshrc-default
fi

# This is leftover from installing custom Zsh themes.
# Might be useful for future reference:
#
# # Go to dotfiles folder
# cd "$(dirname $0)"/..
#
# # Find the theme files
# THEME_SOURCE=zsh/honukai-iterm-zsh/honukai.zsh-theme
# THEME_DESTINATION=${OH_MY_ZSH}/themes/honukai.zsh-theme
#
# # Copy theme file if needed
# if [ ! -f ${THEME_DESTINATION} ];
# then
# 	echo "  Installing Honukai theme for you."
# 	cp ${THEME_SOURCE} ${THEME_DESTINATION}
# fi

exit 0
