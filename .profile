# shellcheck shell=sh

# Helpful functions
alias getip='dig +short myip.opendns.com @resolver1.opendns.com'
alias serve='python -m http.server 8000'

loop() {
	eval "$1"
	if [ -z "$3" ]
	then
		sleep "$2s" && loop "$1" "$2"
	elif [ "$3" != "1" ]
	then
		sleep "$2s" && loop "$1" "$2" "$(($3 - 1))"
	fi
}

# git stuff
alias s='git status'
alias log='git log --oneline -n 10 --color | emojify'
logn() {
	git log --oneline -n "$1" --color | emojify
}

# Go stuff
export GOPATH="$HOME/code/go"
export PATH="$PATH:$GOPATH/bin"
eval "$(goenv init -)"

# Java stuff
JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_HOME

# Ethereum stuff
alias ethwallet="/Applications/Ethereum\ Wallet.app/Contents/MacOS/Ethereum\ Wallet"

# Docker stuff
alias docker-start="/Applications/Docker.app"

# Ruby stuff
export PATH="/usr/local/opt/ruby/bin:$PATH"
export GEM_HOME="$HOME/.gem"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/will/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/will/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/will/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/will/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
