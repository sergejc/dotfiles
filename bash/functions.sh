#!/bin/bash

take () {
	mkdir $1
	cd $1
}

fstring () {
    find -name "$1" -exec fgrep --color -Hn "$2" {} \;
}
