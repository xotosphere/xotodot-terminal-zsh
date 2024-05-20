#!/bin/bash

# RENAME LOWERCASE
function xoto_rlower() {
	rename -f 'y/A-Z/a-z/' *
}

# RENAME UPPERCASE
function xoto_rupper() {
	rename -f 'y/a-z/A-Z/' *
}

# RENAME SPACE
function xoto_rspace() {
	rename "s/ //g" *
}

# RENAME DOT
function xoto_rdot() {
	rename "s/ /./g" *
}

# RENAME
alias rlower="xoto_rlower" 
alias rupper="xoto_rupper" 
alias rspace="xoto_rspace" 
alias rdot="xoto_rdot" 