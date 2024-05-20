#!/bin/bash

# PORTLISTEN
function xoto_portlisten() {
	lsof -i -P -n | grep LISTEN
}

# PORTINFO
function xoto_portinfo() {
	ps aux | grep ${one}
}

# KILLPORT
function xoto_killport() {
	lsof -P | grep $1 | awk '{print $2}' | xargs kill -9
}


# PORT
alias portinfo="xoto_portinfo";
alias portlisten="xoto_portlisten";
alias killport="xoto_killport";
