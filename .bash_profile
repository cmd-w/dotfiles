HOST_NAME=cmd_w


export PATH=$PATH:$HOME/bin

export HISTSIZE=50
export HISTFILESIZE=200

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple txtrst='\e[0m'    # Text Reset

#emojis=("🌊" "🔮" "🦋" "🧬")

#EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export BASH_SILENCE_DEPRECATION_WARNING=1

PS1="\[\e[36m\]\t\[\033[m\] >"
#PS1="$EMOJI >"

neofetch
#fortune | cowsay -f tux
 
function mkcd()
{
	mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias c='code .'
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder

# ------------------
# Personal Aliases
# ------------------

alias w0="networksetup -setairportpower en0 off"
alias w1="networksetup -setairportpower en0 on"

alias b0="blueutil -p 0" 
alias b1="blueutil -p 1"

alias home="cd ~"
alias eject="diskutil eject disk2s2"
alias cl="clear"
alias cpu="ps aux"
alias disk="df -h"

alias chrome="open /Users/artuurmaertens/chrome"


alias movie="cd /Volumes/driver_a/mp4/movie/"
alias serie="cd /Volumes/driver_a/mp4/serie/"

alias sleep="pmset sleepnow"
alias goodnight="w0;b0;sleep"
alias vacay="w0;b0;sleep;killall -u artuurmaertens"
alias refresh="home;cl;neofetch"

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
