# vim: et ft=sh

set -o vi

function mcd() {
	mkdir -p "$@"
	cd "$@"
}
export -f mcd

# add ~/scripts to path
export PATH=$HOME/scripts:$PATH

# set LS_COLORS
# eval "$(dircolors -b ~/dotfiles/dircolors-solarized/dircolors.ansi-dark)"


