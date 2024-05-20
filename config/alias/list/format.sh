#!/bin/bash

# FORMAT CF
function xoto_cf() {
	clang-format -i ./$1
}

# FORMAT CFA
function xoto_cfa() {
	clang-format -i ./*.java
}

# FORMAT
alias cf="xoto_cf";
alias cfa="xoto_cfa";

