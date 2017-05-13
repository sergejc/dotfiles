#!/bin/bash

# ALIAS
alias apt='sudo apt'
alias server='python -m SimpleHTTPServer 8000'
alias pretty_json='python -m json.tool'
alias mkdir='mkdir -p'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias reload='sudo service apache2 reload'
alias node='nodejs'
alias grep='grep --colour=auto'
alias subl='subl -n .'
alias vi='vim'

hash -d log=/var/log/
hash -d www=/var/www/
