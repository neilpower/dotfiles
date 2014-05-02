set -o vi

function mcd() {
	mkdir -p "$@"
	cd "$@"
}
export -f mcd

export PS1='$SHANE_SHELL\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[0m\]\$ '

# set LS_COLORS
eval "$(dircolors ~/dotfiles/dircolors-solarized/dircolors.ansi-dark)"

# if [ -r ~/dotfiles-work/dircolors ]; then
#     eval "$(dircolors -b ~/dotfiles-work/dircolors)"
# else
#     eval "$(dircolors -b)"
# fi

# set some aliases
alias ls='ls -Fh --color=auto'
alias la='ls -Fha --color=auto'
alias ll='ls -Fhl --color=auto'
alias lla='ls -Fhla --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
