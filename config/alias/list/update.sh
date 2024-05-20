#!/bin/bash

# UPDATE ALL
function xoto_updateall() {
	echo "brew list and updates"
	echo "-----------------"
	brew list
	sudo brew update
	sudo brew cask update
	echo "antigen list and updates"
	echo "-----------------"
	sudo antigen update
	echo "gem list and updates"
	echo "-----------------"
	gem list
	sudo gem update
	echo "ZSH updates"
	echo "-----------------"
	upgrade_oh_my_zsh
	echo "npm list and updates"
	echo "-----------------"
	npm list -g --depth=0
	sudo npm update -g
	echo "-----------------"
	echo "MORE TO CHECK "
	echo "-----------------"
	sudo npm-check -u -g
	echo "DONE ~"
}

# UPDATE
alias updateall="xoto_updateall";
