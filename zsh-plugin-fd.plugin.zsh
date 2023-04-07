#!/bin/sh

###
 # shellcheck disable=SC2006,SC2035,SC2086
 ##

if [ "$(command -v require)" ]; then
	require "fzf" "brew reinstall fzf" "brew" # Automatically install fzf using homebrew.
fi

###
 # Similar to cd, but using fzf.
 #
 # E.g: fd [number]
 #
 # @since Wednesday, 9/11/2019
 #
 ##
fd () {

	if ! [ -x "$(command -v fzf)" ]; then >&2 echo "Please install fzf to use fd." && return 1; fi
	if ! [ -x "$(command -v find)" ]; then >&2 echo "Requires find command." && return 1; fi

	DEPTH=0

	if [ -n "$1" ]; then
		DEPTH="$1"
	fi
	DIR=`find -L * -maxdepth $DEPTH -type d -print 2> /dev/null | fzf --height=100%` \
		&& cd "$DIR" || return 1

	return 0
}
