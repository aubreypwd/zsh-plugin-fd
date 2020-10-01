#!/bin/zsh

if [[ -x $(command -v brew) ]] && [[ ! -x $(command -v fzf) ]]; then
	brew reinstall fzf
fi

if ! [[ -x $(command -v fzf) ]]; then
	echo "Please install fzf:";
	echo "\tHomebrew: brew install fzf"
else

	###
	 # Similar to cd, but using fzf.
	 #
	 # E.g: fd
	 #
	 # @since Wednesday, 9/11/2019
	 ##
	function fd {
		local DEPTH=0

		if [ -n "$1" ]; then
			DEPTH="$1"
		fi

		local DIR=`find -L * -maxdepth $DEPTH -type d -print 2> /dev/null | fzf-tmux` \
			&& cd "$DIR"
	}
fi
