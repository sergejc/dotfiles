#!/bin/bash

# ENVIRONMENT
export PATH="vendor/bin:$HOME/.composer/vendor/bin:$HOME/.npm-global/bin:$PATH"
export MC_SKIN=$HOME/.mc/solarized.ini

if [[ -r /usr/share/powerline/zsh/powerline.zsh ]]; then
    source /usr/share/powerline/zsh/powerline.zsh
fi

if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors ~/.foldercolors/dircolors.ansi-dark)"
fi

if [[ $ITERM_PROFILE == "Light" ]]; then
    ZSH_THEME="robbyrussell"
fi

if [ "$TMUX" = "" ]; then tmux; fi
