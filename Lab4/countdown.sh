#!/bin/bash

function _curr-timeval() {
	date +'%s'
}

function countdown() {
	echo 'Now:              '$(date)
	echo 'Counting down to: '$(date --date="@$TIMEVAL")
	
	while true ; do
		local CURR_TIMEVAL=$(_curr-timeval)
		local DELAY=$((TIMEVAL - CURR_TIMEVAL))
		if ! [ $DELAY -gt 0 ] ; then
			break
		fi
		echo -ne "$DELAY \r"
		sleep 1
	done
	echo ' '
}

function countdown() {
	local DELAY=$1
	if [ "$DELAY" == "" ] ; then
		echo "Expected parameter in seconds!" >&2
		return 1
	fi
	local CURR_TIMEVAL=$(_curr-timeval)
	local TIMEVAL=$((CURR_TIMEVAL + DELAY))
	_countdown $TIMEVAL
}

function countdown_to() {
	local TIME=$1
	if [ "$TIME" == "" ] ; then
		echo "Expected timestamp parameter!" >&2
		return 1
	fi
	local TIMEVAL=$(date --date="$TIME" +'%s')
	if [ "$TIMEVAL" == "" ] ; then
		return 1
	fi
	_countdown $TIMEVAL
}

function error_exit {
<<<<<<< HEAD
    echo "$1" >&2   ## Send message to stderr. Exclude >&2 if you don't want it that way.
    exit "${2:-1}"  ## Return a code specified by $2 or 1 by default.
=======
    echo "$1" >&2 
    exit "${2:-1}"
>>>>>>> fd2910ad6d0846dfdc1d3b9935b2b5a22662c961
}

[[ $TRESHOLD =~ []+$ ]] || error_exit "Nope, not what I'm looking for."