##########################################
# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
##########################################
# 🔥 be sure to link the ~/.zsh to this file by adding this line in your root zsh :
# source ~/.config/zsh/.zshrc
##########################################

#############
# ENVIRONMENT
#############

export ZDOTDIR=$HOME/.config
export PATH="/usr/local/opt/man-db/libexec/bin:$PATH"
export ZSH=$HOME/.oh-my-zsh 

######################
# ZSH PLUGINS SETTINGS
######################

autoload -Uz compinit && compinit -d "$HOME"/.config/zsh/.zcompdump/.zcompdump
if [[ -z "$ZSH_COMPDUMP" ]]; then ZSH_COMPDUMP="$HOME/.config/zsh/.zcompdump/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}" fi
source $ZSH/oh-my-zsh.sh

########################
# ZSH SPACESHIP/STARSHIP
########################

# source "$HOME/.config/zsh/spaceship.zsh"
eval "$(starship init zsh)"

##########
# ZSH INIT
##########

source "$HOME/.config/zsh/config/zsh.sh"
export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"

#########
# ANTIGEN
#########

source "$HOME/.config/antigen.zsh"
antigen init "$HOME/.config/zsh/.antigenrc"
source "$HOME/.config/zsh/config/antigen.sh"

######
# FZF
######

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=fg:#2e2e2e,bg:#ffffff,hl:#1a1a1a
--color=fg+:#333333,bg+:#ededed,hl+:#333333
--color=info:#000000,prompt:#d7005f,pointer:#af5fff
--color=marker:#c56bdb,spinner:#af5fff,header:#87afaf'

######
# BAT
######

export BAT_THEME="GitHub"

#####################
# BASIC UNIX SETTINGS
#####################

export KITTY_CONFIG_DIRECTORY="~/.config/kitty"
export BAT_CONFIG_PATH="~/.config/bat/bat.conf"

source <(cat "$HOME"/.config/zsh/config/alias/list/*)
[ -f $HOME/.config/zsh/config/history.sh ] && source "$HOME/.config/zsh/config/history.sh"
[ -f $HOME/.config/zsh/config/alias/main.sh ] && source "$HOME/.config/zsh/config/alias/main.sh"
[ -f $HOME/.config/zsh/config/exports.sh ] && source "$HOME/.config/zsh/config/exports.sh"
[ -f $HOME/.config/zsh/config/completions.sh ] && source "$HOME/.config/zsh/config/completions.sh"
[ -f $HOME/.config/zsh/config/bindkeys.sh ] && source "$HOME/.config/zsh/config/bindkeys.sh"


############
# OS CASES
############

[ -f $HOME/.config/zsh/config/oscase/oscase.sh ] && source "$HOME/.config/zsh/config/oscase/oscase.sh"

case $(uname -a) in
    *Microsoft*) OS="WSL" [ -f $HOME/.config/zsh/config/oscase/windowcase.sh ] && source "$HOME/.config/zsh/config/oscase/windowcase.sh";;
    *microsoft*) OS="WSL2" [ -f $HOME/.config/zsh/config/oscase/windowcase.sh ] && source "$HOME/.config/zsh/config/oscase/windowcase.sh";;
    Linux*) OS="Linux" [ -f $HOME/.config/zsh/config/oscase/linuxcase.sh ] && source "$HOME/.config/zsh/config/oscase/linuxcase.sh";;
    Darwin*) OS="Mac" [ -f $HOME/.config/zsh/config/oscase/maccase.sh ] && source "$HOME/.config/zsh/config/oscase/maccase.sh";;
    CYGWIN*) OS="Cygwin";;
    MINGW*) OS="Windows" [ -f $HOME/.config/zsh/config/oscase/windowcase.sh ] && source "$HOME/.config/zsh/config/oscase/windowcase.sh";;
    *Msys) OS="Windows" [ -f $HOME/.config/zsh/config/oscase/windowcase.sh ] && source "$HOME/.config/zsh/config/oscase/windowcase.sh";;
    *) OS="UNKNOWN:${unameOut}";;
esac
