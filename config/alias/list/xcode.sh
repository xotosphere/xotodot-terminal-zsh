# #!/bin/bash

# XCODE CREATE
function xoto_xcodec() {
	echo "what is the name of your project? "
	echo "---------------------------------- "
	read varname
	cp -a ~/Documents/igithub/util.toolbox/copytool.box/xcode/temp.ios/temp.project ./
	mv ./temp.project ./$varname
	cd $varname/project
	open project.xcodeproj
	echo "DONE "
	echo "~~~~"
}

# XCODE SIM
function xoto_xcodesim() {
	echo "what is the path to be : "
	echo "------------------------------- "
	read varname
	ios-sim launch --devicetypeid "iPhone-X, 12.1" ./Build/Debug/$varname".app"
	echo "DONE "
	echo "~~~~"
}

# XCODE
alias xcodec="xoto_xcodec";
alias xcodesim="xoto_xcodesim";
