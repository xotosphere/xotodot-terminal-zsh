####################
# COMPELTIONS
####################

# COMPELTIONS
# Initialize completion
# http://zsh.sourceforge.net/Doc/Release/Completion-System.html
# https://github.com/sorin-ionescu/prezto/blob/master/modules/completion/init.zsh
# https://github.com/ThiefMaster/zsh-config/blob/master/zshrc.d/completion.zsh

###################
# USING CACHE
###################

zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path "$HOME/.config/zsh/.zcompdump"

####################
# COLOR SCHEME
####################

zstyle ':completion:*' list-colors 'no=00:fi=00:di=34:ow=34;40:ln=35:pi=30;44:so=35;44:do=35;44:bd=33;44:cd=37;44:or=05;37;41:mi=05;37;41:ex=01;31:*.cmd=01;31:*.exe=01;31:*.com=01;31:*.bat=01;31:*.reg=01;31:*.app=01;31:*.txt=32:*.org=32:*.md=32:*.mkd=32:*.h=32:*.c=32:*.C=32:*.cc=32:*.cpp=32:*.cxx=32:*.objc=32:*.sh=32:*.csh=32:*.zsh=32:*.el=32:*.vim=32:*.java=32:*.pl=32:*.pm=32:*.py=32:*.rb=32:*.hs=32:*.php=32:*.htm=32:*.html=32:*.shtml=32:*.erb=32:*.haml=32:*.xml=32:*.rdf=32:*.css=32:*.sass=32:*.scss=32:*.less=32:*.js=32:*.coffee=32:*.man=32:*.0=32:*.1=32:*.2=32:*.3=32:*.4=32:*.5=32:*.6=32:*.7=32:*.8=32:*.9=32:*.l=32:*.n=32:*.p=32:*.pod=32:*.tex=32:*.go=32:*.bmp=33:*.cgm=33:*.dl=33:*.dvi=33:*.emf=33:*.eps=33:*.gif=33:*.jpeg=33:*.jpg=33:*.JPG=33:*.mng=33:*.pbm=33:*.pcx=33:*.pdf=33:*.pgm=33:*.png=33:*.PNG=33:*.ppm=33:*.pps=33:*.ppsx=33:*.ps=33:*.svg=33:*.svgz=33:*.tga=33:*.tif=33:*.tiff=33:*.xbm=33:*.xcf=33:*.xpm=33:*.xwd=33:*.xwd=33:*.yuv=33:*.aac=33:*.au=33:*.flac=33:*.m4a=33:*.mid=33:*.midi=33:*.mka=33:*.mp3=33:*.mpa=33:*.mpeg=33:*.mpg=33:*.ogg=33:*.ra=33:*.wav=33:*.anx=33:*.asf=33:*.avi=33:*.axv=33:*.flc=33:*.fli=33:*.flv=33:*.gl=33:*.m2v=33:*.m4v=33:*.mkv=33:*.mov=33:*.MOV=33:*.mp4=33:*.mp4v=33:*.mpeg=33:*.mpg=33:*.nuv=33:*.ogm=33:*.ogv=33:*.ogx=33:*.qt=33:*.rm=33:*.rmvb=33:*.swf=33:*.vob=33:*.webm=33:*.wmv=33:*.doc=31:*.docx=31:*.rtf=31:*.dot=31:*.dotx=31:*.xls=31:*.xlsx=31:*.ppt=31:*.pptx=31:*.fla=31:*.psd=31:*.7z=1;35:*.apk=1;35:*.arj=1;35:*.bin=1;35:*.bz=1;35:*.bz2=1;35:*.cab=1;35:*.deb=1;35:*.dmg=1;35:*.gem=1;35:*.gz=1;35:*.iso=1;35:*.jar=1;35:*.msi=1;35:*.rar=1;35:*.rpm=1;35:*.tar=1;35:*.tbz=1;35:*.tbz2=1;35:*.tgz=1;35:*.tx=1;35:*.war=1;35:*.xpi=1;35:*.xz=1;35:*.z=1;35:*.Z=1;35:*.zip=1;35:*.ANSI-30-black=30:*.ANSI-01;30-brblack=01;30:*.ANSI-31-red=31:*.ANSI-01;31-brred=01;31:*.ANSI-32-green=32:*.ANSI-01;32-brgreen=01;32:*.ANSI-33-yellow=33:*.ANSI-01;33-bryellow=01;33:*.ANSI-34-blue=34:*.ANSI-01;34-brblue=01;34:*.ANSI-35-magenta=35:*.ANSI-01;35-brmagenta=01;35:*.ANSI-36-cyan=36:*.ANSI-01;36-brcyan=01;36:*.ANSI-37-white=37:*.ANSI-01;37-brwhite=01;37:*.log=01;32:*~=01;32:*#=01;32:*.bak=01;33:*.BAK=01;33:*.old=01;33:*.OLD=01;33:*.org_archive=01;33:*.off=01;33:*.OFF=01;33:*.dist=01;33:*.DIST=01;33:*.orig=01;33:*.ORIG=01;33:*.swp=01;33:*.swo=01;33:*,v=01;33:*.gpg=34:*.gpg=34:*.pgp=34:*.asc=34:*.3des=34:*.aes=34:*.enc=34:*.sqlite=34:'

####################
# GROUP MATCHES
####################

# GROUP MATCHES AND DESCRIBE.
zstyle ':completion:*' menu select
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'

zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

####################
# DIRECTORIES
####################

zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
zstyle ':completion:*' squeeze-slashes true

####################
# SORTING
####################

zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters # array completion element sorting.

####################
# HISTORY
####################

zstyle ':completion:*:history-words' stop yes
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' list false
zstyle ':completion:*:history-words' menu yes

####################
# IGNORE MULTIPLE ENTRIES
####################

zstyle ':completion:*:(rm|kill|diff):*' ignore-line other
zstyle ':completion:*:rm:*' file-patterns '*:all-files'

####################
# KILL ALL
####################

# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;36=0=01'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*' insert-ids single

####################
# MAN MANUALS
####################

zstyle ':completion:*:manuals' separate-sections false
zstyle ':completion:*:manuals.(^1*)' insert-sections false

####################
# MEDIA PLAYERS
####################

zstyle ':completion:*:*:mpg123:*' file-patterns '*.(mp3|MP3):mp3\ files *(-/):directories'
zstyle ':completion:*:*:mpg321:*' file-patterns '*.(mp3|MP3):mp3\ files *(-/):directories'
zstyle ':completion:*:*:ogg123:*' file-patterns '*.(ogg|OGG|flac):ogg\ files *(-/):directories'
zstyle ':completion:*:*:mocp:*' file-patterns '*.(wav|WAV|mp3|MP3|ogg|OGG|flac):ogg\ files *(-/):directories'

####################
# SSH/SCP/RSYNC
####################

zstyle ':completion:*:(ssh|scp|rsync):*' tag-order 'hosts:-host:host hosts:-domain:domain hosts:-ipaddr:ip\ address *'
zstyle ':completion:*:(scp|rsync):*' group-order users files all-files hosts-domain hosts-host hosts-ipaddr
zstyle ':completion:*:ssh:*' group-order users hosts-domain hosts-host users hosts-ipaddr
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-domain' ignored-patterns '<->.<->.<->.<->' '^[-[:alnum:]]#(.[-[:alnum:]]#)#' '*@*'
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]#:(#c,2))#(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'

####################
# FORMATING
####################

# FORMAT GROUP MATCHES
zstyle ':completion:*:corrections' format '
%F{red} %d #%e %f'
zstyle ':completion:*:descriptions' format '
%F{#333955} %d %f'
zstyle ':completion:*:messages' format '
%F{purple} %d %f '
zstyle ':completion:*:warnings' format '
%F{yellow} sorry, no matches found %f'

# FORMAT YELLOW
# zstyle ':completion:*' format '%F{yellow}%d --%f '
# zstyle ':completion:*' format '
# Completing %d'

# FORMAT FOR COMPLETION MESSAGES
# zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
# zstyle ':completion:*:corrections' format '%U%F{green}%d (errors: %e)%f%u'
# zstyle ':completion:*:warnings' format '%F{202}%BSorry, no matches for: %F{214}%d%b'

# SHOW MESSAGE WHILE WAITING FOR COMPLETION
zstyle ':completion:*' show-completer true

# PRETTIER COMPLETION FOR PROCESSES USE MENU COMPLETION
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:*:*:*:processes' menu yes select
# zstyle ':completion:*:*:*:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,args -w -w"
zstyle ':completion:*:*:*:*:processes' command 'ps -u $LOGNAME -o pid,user,command -w'

####################
# ERROR CHECKER
####################

zstyle ':completion:*' completer _complete _match _approximate # completer for all maching completions
zstyle ':completion:*:match:*' original only # making sure only originals are there
zstyle ':completion:*:approximate:*' max-errors 1 numeric # approximate numeric errors checker
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3>7?7:($#PREFIX+$#SUFFIX)/3))numeric)' # increase the number of errors based on the length of the typed word. but make - sure to cap (at 7) the max-errors to avoid hanging.
zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))' # don't complete unavailable commands.
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

####################
# ALL OTHER CHECKUP
####################

# MENU CHECKUP ALWAYS USE MENU SELECTION FOR `CD -`
zstyle ':completion:*:*:cd:*:directory-stack' force-list always
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select

# PARENT DIR CHECK
zstyle ':completion:*' accept-exact-dirs true

# FILES AND DIR SEPERATE
zstyle ':completion:*' list-dirs-first true

####################
# UPDATE
####################

# AUTOMATICALLY UPDATE PATH ENTRIES
zstyle ':completion:*' rehash true
zstyle ':acceptline:*' rehash true

####################
# CASE INSENSITIVE
####################

# ALL PARTIAL-WORD, THEN SUBSTRING COMPLETION.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
if zstyle -t ':prezto:module:completion:*' case-sensitive; then
	zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
	setopt CASE_GLOB
else
	zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
	unsetopt CASE_GLOB
fi

####################
# MATCHING
####################

# SMART MATCHING
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' # in the middle of a word
zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*' # in the middle of a word

