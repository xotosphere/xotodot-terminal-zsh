#!/bin/bash

# EXT CP
function xoto_extcp() {
	echo "what do you want the dir to be : "
	echo "------------------------------- "
	read varname
	mkdir $varname
	thishere=$1
	find . -name "*.${thishere}" -type f -exec cp {} "./$varname" \
	echo "DONE "
	echo "~~~~"
}

# EXT CH
function xoto_extch() {
	thishere=$1
	echo "what ext to change : "
	echo "------------------------------- "
	read varname
	for f in *.$1; do
		[ -f "$f" ] && mv -v "$f" "${f%$1}$varname"
	done
	echo "DONE "
	echo "~~~~"
}

# EXT MV
function xoto_extmv() {
	echo "what do you want the dir to be : "
	echo "------------------------------- "
	read varname
	mkdir $varname
	thishere=$1
	find . -name "*.${thishere}" -type f -exec mv {} "./$varname" \
	echo "DONE "
	echo "~~~~"
}

# EXT
alias extch="xoto_extch";
alias extcp="xoto_extcp";
alias extmv="xoto_extmv";
