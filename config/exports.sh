# XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# GROOVY AND APPENGINE
export GROOVY_HOME="/usr/local/opt/groovy/libexec"

# ZSH DIR
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$HOME/.config/zsh/.zsh_history"

# SSH
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# ANTIGEN
export ANTIGEN_BUNDLE_RECORD="$HOME/.antigen/bundles"

# GRADLE
export GRADLE_HOME=/opt/gradle/latest
export PATH=${GRADLE_HOME}/bin:${PATH}

# PYTHON AND PIP
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

# ANACONDA3
export PATH="$HOME/anaconda3/bin/:$PATH"

# STARSHIP
export STARSHIP_CONFIG=~/.config/zsh/starship.toml

# PDF GETTEXT SOURCE
export PATH="/usr/local/opt/gettext/bin:$PATH"

# LANG
export LANG=en_US.UTF-8

# NVM bundle
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# YARN
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# DEFAULT APPS
export TERMINAL="alacritty"
export EDITOR="nvim"
export VISUAL="nvim"

# BROWSER
export BROWSER="chrome"

# PNPM MAC
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
