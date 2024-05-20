#!/bin/bash

# M2EOFF
function xoto_m2eoff() {
	echo mvn eclipse:eclipse -Declipse.useProjectReferences=false
	mvn eclipse:eclipse -Declipse.useProjectReferences=false
}

# MVNARC
function xoto_mvnarc() {
	mvn archetype:generate
}

# MVN
alias m2eoff="xoto_m2eoff";
alias mvnarc="xoto_mvnarc";
