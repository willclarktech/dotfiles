# Ruby stuff
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Work stuff
WEEKDAY=$(date +%w)
HOUR=$(date +%H)
WORKNAME="lisk"
if ((1 <= 10#$WEEKDAY && 10#$WEEKDAY <= 5 && 9 <= 10#$HOUR && 10#$HOUR <= 19)); then
	cd ~/Code/$WORKNAME
else
	cd ~/Code
fi
