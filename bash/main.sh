#!/bin/bash

source $HOME/dotfiles/bash/linux/env.sh
source $HOME/dotfiles/bash/linux/alias.sh
source $HOME/dotfiles/bash/linux/prompt.sh
source $HOME/dotfiles/bash/linux/functions.sh
source $HOME/dotfiles/bash/linux/functions_zsh.sh

# main bashrc file
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    source $HOME/dotfiles/bash/linux/alias.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    source $HOME/dotfiles/bash/macos/alias.sh
else
    # Unknown
fi
