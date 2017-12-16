# Causes the bash prompt to be <user>@mac:<path to curent directory>, i.e. test@mac:~/Downloads$ 
export PS1='\u@mac:\w$ ' 

# The below adds color to the command line
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Shows the time that a command was run when running `history`
export HISTTIMEFORMAT="%d/%m/%y %T "

# Prevents ctrl+d from closing the terminal
set -o ignoreeof

# This function is only useful if you have fuzzyfinder installed
# The one used here is from: https://github.com/junegunn/fzf
# Usage: Run `openfile` and start typing the (approximate) filename you wish to open
# Alternatively, run `openfile <approx filename>` to start the search with the approximate filename
openfile() {
    if [ "$1" == "" ]; then
        FILE=`fzf -i`
    else
        FILE=`fzf -i -q $1`
    fi

    if [ "${FILE}" != "" ]; then
        echo ${FILE}
        vim ${FILE}
    fi
}

# Aliasing shortcuts for using cd to go upwards in directory tree
alias cd.="cd .."
alias cd..="cd ../.."
alias cd...="cd ../../.."
alias cd....="cd ../../../.."

# Aliasing git commands
# There is no alias for `git checkout` because of its potential to revert all changes by accident
alias ga="git add"
alias gb="git branch"
alias gcm="git commit -m"
alias gd="git diff"
alias gdc="git diff --cached"
alias gr="git reset"
alias gs="git status"

# Aliasing common typos for 'ls'
alias l=ls 
alias ks=ls
alias ll="ls -l"
alias ;s=ls

#Aliasing common typos for vim
alias vun="vim"
alias vum="vim"

