#!/bin/bash

take () {
	mkdir $1
	cd $1
}

fstring () {
    find -name "$1" -exec fgrep --color -Hn "$2" {} \;
}

function pw {
    # Register the command you want to run when changes are detected here
    run="clear && printf '\e[3J' && vendor/bin/phpunit"

    # Retrieve the custom argments. If none are provided, default to "tests"
    [[ -n $@ ]] && args=$@ || args="tests"

    # Run the command first...
    eval "$run $args"
    # ...then start watching for changes—and run on change
    watchman-make -p 'src/**/*.php' 'tests/**/*.php' --make=$run -t "$args"
}
