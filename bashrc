function mcd() {
	mkdir -p "$@"
	cd "$@"
}
export -f mcd

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[0m\]\$ '

# set LS_COLORS
if [ -r ~/dotfiles-work/dircolors ]; then
    eval "$(dircolors -b ~/dotfiles-work/dircolors)"
else
    eval "$(dircolors -b)"
fi

# set some aliases
alias ls='ls -Fh --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias gvimr='gvim --remote'
alias vimr='vim --remote'
