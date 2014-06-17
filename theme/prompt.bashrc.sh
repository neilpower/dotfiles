# export PS1='$SHANE_SHELL\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[0m\]\$ '

# Solarized colors
local base03='\[\e[1;30m\]'  # 8
local base02='\[\e[0;30m\]'  # 0
local base01='\[\e[1;32m\]'  # 10
local base00='\[\e[1;33m\]'  # 11
local base0='\[\e[1;34m\]'   # 12
local base1='\[\e[1;36m\]'   # 14
local base2='\[\e[0;37m\]'   # 7
local base3='\[\e[1;37m\]'   # 15
local yellow='\[\e[0;33m\]'  # 3
local orange='\[\e[1;31m\]'  # 9
local red='\[\e[0;31m\]'     # 1
local magenta='\[\e[0;35m\]' # 5
local violet='\[\e[1;35m\]'  # 13
local blue='\[\e[0;34m\]'    # 4
local cyan='\[\e[0;36m\]'    # 6
local green='\[\e[0;32m\]'   # 2
local reset='\[\e[0m\]'

PS1='$SHANE_SHELL'
PS1+="$green\u"
PS1+="$green@"
if [ -n "$ACDS_VERSION" ]; then
    if [ -n "$ACDS_SRC_ROOT" ]; then
        qk_dirname="$(basename "$(dirname "$ACDS_SRC_ROOT")") "
    else
        qk_dirname=""
    fi
    PS1+="$green[$qk_dirname$ACDS_VERSION/$ACDS_BUILD_NUMBER]"
else
    if [ -n "$SSH_TTY" ]; then
        PS1+="$red\h"
    else
        PS1+="$green\h"
    fi
fi
PS1+="$reset "
PS1+="$blue\W"
PS1+="$cyan\$ "
PS1+="$reset"
export PS1

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

