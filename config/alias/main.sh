# NON XOTO ALIAS - MAIN

alias lsd='ranger'
alias tmux="tmux -T RGB"
alias lg="lazygit"
alias ld="lazydocker"
alias lnp="lazynpm"
alias lk="lazykubernetes"
alias n="nvim"
alias cdf="z"
alias cdd="exa --tree $1"
alias cds="fd --type f --hidden --exclude .git | fzf --ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}' | xargs nvim"

# NOTES

# alias fcd="cd \$(find . -type d -not -path './node_modules/*' | fzf)"
# alias ncd="nvim \$(find . -type f -not -path './node_modules/*' | fzf --ansi --preview-window noborder --preview-window 'right:60%' --preview 'batcat --color=always --style=numbers,changes --line-range :300 {}')"
# alias cat="batcat"
