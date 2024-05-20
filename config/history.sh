######################################################
############### << HISTORY >> ########################
######################################################

HIST_STAMPS="mm/dd/yyyy"
HISTSIZE=200000
SAVEHIST=200000

setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history
setopt hist_verify
setopt hist_save_nodups
setopt share_history

unsetopt hist_ignore_space

ZSH_PECO_HISTORY_OPTS="--layout=bottom-up --initial-filter=Fuzzy"
