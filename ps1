#!/bin/bash


SCHEMEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $SCHEMEDIR/scheme_utils


PS1='\u \['$myblue'\][\w]\['$myreset'\]$(if git_dirty; then printf "\[${myyellow}\]$(find_git_branch)"; else printf "\[$mygreen\]$(find_git_branch)";fi)\['$myreset'\] '

