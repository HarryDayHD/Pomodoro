#!/bin/bash
WORK_SECONDS=$((25*60))
BREAK_SECONDS=$((5*60))
WORK_MESSAGE="WORK"
BREAK_MESSAGE="BREAK"

echo "Starting the 'The Pomodoro Technique'"
echo "Press Ctrl-C in this terminal to end the task"
echo 

update () {
	local MESSAGE=$1
	local SECONDS=$2
	local TIME_MESSAGE="$(date +%T --date "$SECONDS seconds")"
	echo "$MESSAGE until $TIME_MESSAGE"
	notify-send "$MESSAGE" "Until $TIME_MESSAGE"
	sleep $SECONDS
}

while true
do
	update $WORK_MESSAGE $WORK_SECONDS
	update $BREAK_MESSAGE $BREAK_SECONDS
done
