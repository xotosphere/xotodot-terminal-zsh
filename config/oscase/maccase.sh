######
# BREW
######

# eval "$(/usr/local/Homebrew/bin/brew shellenv)"

#######
# ALIAS
#######

alias open="open $1"

# alias cat="bat $1 --theme=GitHub --paging=never --style=changes"

#######
# SSH
#######

eval `ssh-agent -s` > /dev/null
ssh-add ~/.ssh/mac/* 2> /dev/null
