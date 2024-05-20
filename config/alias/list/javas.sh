#!/bin/bash

# JAVAC
function xoto_javas() { 
	javac $(find . -name '*.java')
}

# JAVA
alias javas="xoto_javas";