#!/bin/bash

take () {
	mkdir $1
	cd $1
}

fstring () {
    find -name "$1" -exec fgrep --color -Hn "$2" {} \;
}

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
