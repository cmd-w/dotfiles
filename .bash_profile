HOST_NAME=smoll 


export PATH=$PATH:$HOME/bin

export HISTSIZE=50
export HISTFILESIZE=200

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
   # used in tmux, linux go crazy when not commented out. 

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR='subl -w'

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple txtrst='\e[0m'    # Text Reset

emojis=("🎱" "🔮" "🍄" "🗿" "🍁")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}


#PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export BASH_SILENCE_DEPRECATION_WARNING=1

export PS1="smoll\[\e[31m\] \[\e[32m\]\W\[\e[m\] \[\e[34m\]» \[\e[m\]" 

#REMEMBER: lowercase w = show whole pwd, uppercase W = show only current folder in prompt

export LSCOLORS=cxgxfxexbxegedabagacad


#PS1="$EMOJI\[\e[31m\] \[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[31m\]:\[\e[m\] \[\e[32m\]\W\[\e[m\] \[\e[34m\]»\[\e[m\] "

#neofetch
fortune /home/cmd-w/workspace/quotes.txt | cowsay -f tux
 
function mkcd()
{
	mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias ll="ls -al" # List all files in current directory in long list format
alias o="xdg-open ." # Open the current directory in file system

# ------------------
# Personal Aliases
# ------------------

alias w0="nmcli radio wifi off"
alias w1="nmcli radio wifi on"

alias b0="sudo systemctl disable bluetooth.service" 
alias b1="sudo systemctl enable bluetooth.service"

alias home="cd ~"
alias open="xdg-open"
alias eject="eject /media/cmd-w/driver_a"
alias cl="clear"
alias cpu="ps aux"
alias disk="fdisk -h" 
alias wifi="nmcli device wifi show-password"

# alias chrome="open /usr/share/applications/google-chrome.desktop"

alias movie="cd /media/cmd-w/driver_a/mp4/movie/"
alias serie="cd /media/cmd-w/driver_a/mp4/serie/"

alias new="home;cl;fortune /home/cmd-w/workspace/quotes.txt | cowsay -f tux"

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -a --allow-empty-message -m ""'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'

