############
# LINUXBREW
############

# export PATH="$HOME/.linuxbrew/bin:$PATH"
# export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
# export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"export PATH="/usr/local/opt/helm@2/bin:$PATH"

# tmux -f ~/.config/.tmux/.tmux.conf new -A -s xoto || tmux

#######
# ALIAS
#######

alias open="xdg-open $1"

# alias cat="bat $1 --theme=GitHub --paging=never --style=changes"

#######
# SSH
#######

eval `ssh-agent -s` > /dev/null
ssh-add ~/.ssh/linux/* 2>/dev/null
