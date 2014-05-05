export PS1='$SHANE_SHELL\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[0m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

