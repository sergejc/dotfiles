#!/bin/bash

# ALIAS
alias server='python -m SimpleHTTPServer 8000'
alias pretty_json='python -m json.tool'
alias mkdir='mkdir -p'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias reload='sudo service apache2 reload'
alias selenium='DISPLAY=:1 xvfb-run java -Dwebdriver.chrome.driver=/usr/local/bin/chromedriver -jar /usr/local/bin/selenium-server-standalone-2.43.1.jar'
alias phantom='phantomjs --webdriver=4444'
alias node=nodejs
alias grep='grep --colour=auto'
alias subl="subl -n ."

hash -d log=/var/log/
hash -d www=/var/www/
