#!/bin/zsh

if [[ $(command -v require) ]]; then
	require "fzf-tmux" "brew reinstall fzf" "brew" # Automatically install fzf using homebrew.
fi

###
 # Similar to cd, but using fzf.
 #
 # E.g: fd
 #
 # @since Wednesday, 9/11/2019
 ##
function fd {

	if ! [[ -x $(command -v fzf) ]]; then >&2 echo "Please install fzf (specifically fzf-tmux) to use fd." && return; fi
	if ! [[ -x $(command -v find) ]]; then >&2 echo "Requires find command." && return; fi

	local DEPTH=0

	if [ -n "$1" ]; then
		DEPTH="$1"
	fi

	local DIR=`find -L * -maxdepth $DEPTH -type d -print 2> /dev/null | fzf-tmux` \
		&& cd "$DIR"
}
