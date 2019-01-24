# Helpful functions
alias getip='dig +short myip.opendns.com @resolver1.opendns.com'
alias serve='python -m SimpleHTTPServer 8000'

function loop {
	eval $1
	if [ -z "$3" ]
	then
		sleep "$2s" && loop $1 $2
	elif [ $3 != "1" ]
	then
		sleep "$2s" && loop $1 $2 "$(expr $3 - 1)"
	fi
}

# git stuff
alias s='git status'
alias log='git log --oneline -n 10 --color | emojify'
function logn {
	git log --oneline -n $1 --color | emojify
}

# nvm settings
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export POSTGRESPATH="/usr/local/Cellar/postgresql@9.6/9.6.6"

# Go stuff
export GOPATH="$HOME/code/go"
export PATH="$POSTGRESPATH/bin:$GOPATH/bin:$PATH"
eval "$(goenv init -)"

# Java stuff
export JAVA_HOME="$(/usr/libexec/java_home)"

# Ethereum stuff
alias ethwallet="/Applications/Ethereum\ Wallet.app/Contents/MacOS/Ethereum\ Wallet"
