#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $DIR/colors

function branch_finder {
	M=$(git branch 2> /dev/null | grep \* | sed '{s/*// ; s/ //}') 
	if [[ "$M" != "" ]]; then
		printf "($M)" 
	else
		printf ">"
	fi
}


function git_changes {
	STAT=$(git status -s 2> /dev/null)
	if [[ "$STAT" != "" ]]; then
		true
	else
		false	
	fi
}


PS1='\u \['$myblue'\][\w]\['$myreset'\] $(if git_changes; then printf "\[${myyellow}\]$(branch_finder)"; else printf "\[$mygreen\]$(branch_finder)";fi)\['$myreset'\] '
