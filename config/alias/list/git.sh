#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# CREATE PUB GIT WITH CONTENT IN FOLDER
function xoto_gitc() {
	CURRENT=$(pwd)
	BASENAME=$(basename "$CURRENT")
	git init && git add . && git commit -m "blast off 🚀"
	echo "creating repo ${BASENAME}"
	hub create -p -d "${BASENAME}"
	git push origin development
}

# UPDATE ALL GIT REPOS
function xoto_gitu() {
	CUR_DIR=$(pwd)
	echo "${GREEN}Updating all repositories...${NC}"
	for i in $(find . -name ".git" | cut -c 3-); do
		echo "${GREEN}[Git] ✅ ----------------- $i${NC}"
		cd "$CUR_DIR/$(dirname "$i")"
		git checkout development
		git add .
		git commit -m "blast off 🚀"
		git push
	done
	echo "${GREEN}Updating Complete! 🥞${NC}"
}

# GIT SUB MODULE
function xoto_gits() {
	git submodule foreach git "$@"
}

# GIT
alias gitc="xoto_gitc";
alias gitu="xoto_gitu";
alias gits="xoto_gits";
