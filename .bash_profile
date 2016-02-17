# .bash_profile
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH


export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1

# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'

alias colorslist="set | egrep 'COLOR_\w*'" # lists all the colors

# Prompts ----------------------------------------------------------
# export PS1="\[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]" # Primary prompt with only a path
# export PS1="\[${COLOR_RED}\]\w > \[${COLOR_NC}\]" # Primary prompt with only a path, for root, need condition to use this for root
# export PS1="\[${COLOR_GRAY}\]\u@\h \[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]" # Primary prompt with user, host, and path
export PS1="\[${COLOR_RED}\]\[${COLOR_LIGHT_CYAN}\]\u@\h \[${COLOR_LIGHT_GREEN}\]\w\[${COLOR_YELLOW}\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 1)\[${COLOR_GREEN}\] > \[${COLOR_NC}\]" # Primary prompt with user, host, and path 1

# This runs before the prompt and sets the title of the xterm* window. If you set the title in the prompt
# weird wrapping errors occur on some systems, so this method is superior
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"' # user@host path

export PS2='> ' # Secondary prompt
export PS3='#? ' # Prompt 3
export PS4='+' # Prompt 4


alias h?='history | grep'
alias getbash='vim ~/.bash_profile'
alias setbash='source ~/.bash_profile'
alias ll="ls -al"
alias cpdir="cp -R"
alias tools="cd ~/commandcenter/www/tools"
alias db="mysql -h hfa-dev.czytkzdz3oaj.us-east-1.rds.amazonaws.com -u harryuser -p harry_cc"



# Set terminal title
# @param string $1  Tab/window title
# @param string $2  (optional) Separate window title
 # The latest version of this software can be obtained here:
# See: http://fvue.nl/wiki/NameTerminal
function nameTerminal() {
    [ "${TERM:0:5}" = "xterm" ]   && local ansiNrTab=0
    [ "$TERM"       = "rxvt" ]    && local ansiNrTab=61
    [ "$TERM"       = "konsole" ] && local ansiNrTab=30 ansiNrWindow=0
        # Change tab title
    [ $ansiNrTab ] && echo -n $'\e'"]$ansiNrTab;$1"$'\a'
        # If terminal support separate window title, change window title as well
    [ $ansiNrWindow -a "$2" ] && echo -n $'\e'"]$ansiNrWindow;$2"$'\a'
} # nameTerminal()
alias pretty_log='git log --pretty=format:"%h%x09%an%x09%s"'
export HUBOT_SLACK_TOKEN='xoxb-3811138031-5W9gcSSgvukt8hI2uCZqPEmO'
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/bmanazar.pem
source ~/git-completion.bash

export VISUAL=vim
export EDITOR="$VISUAL"
