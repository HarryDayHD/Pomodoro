#!/bin/bash
((WORK_SECONDS=25 * 60))
((BREAK_SECONDS=5 * 60))
WORK_MESSAGE="WORK"
BREAK_MESSAGE="BREAK"

while true
do
	echo "Starting the 'The Pomodoro Technique'"
	echo "Press Ctrl-C in this terminal to end the task"
	echo 

	echo "Posting WORK_MESSAGE=\"$WORK_MESSAGE\""
	notify-send "$WORK_MESSAGE"

	echo "Waiting WORK_SECONDS=$WORK_SECONDS"
	sleep $WORK_SECONDS
	
	echo "Posting BREAK_MESSAGE=\"$BREAK_MESSAGE\""	
	notify-send "$BREAK_MESSAGE"

	echo "Waiting BREAK_SECONDS=$BREAK_SECONDS"
	sleep $BREAK_SECONDS
done
