#!/bin/bash

function xoto_lsa() {exa -la}
function xoto_ls() {exa -l}
function xoto_la() {exa -a}
function xoto_lst() {exa --tree}

# LS
alias lsa="xoto_lsa";
alias ls='xoto_ls'
alias la='xoto_la'
alias lst='xoto_lst'
