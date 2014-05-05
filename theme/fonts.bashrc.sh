# vim: et ts=4 sw=4

export POWERLINE_FONT=1

function powerline_font {
    if [ $# -ne 1 ]; then
        echo "Currently, POWERLINE_FONT is set to $POWERLINE_FONT"
        read -r -p 'Do you have the powerline font installed? [Y/n] ' yn
        if [ -z "$yn" ]; then
            export POWERLINE_FONT=1
            exit 0
        fi
    else
        yn="$1"
    fi

    case "$yn" in
        y)       export POWERLINE_FONT=1 ;;
        Y)       export POWERLINE_FONT=1 ;;
        yes)     export POWERLINE_FONT=1 ;;
        1)       export POWERLINE_FONT=1 ;;
        enable)  export POWERLINE_FONT=1 ;;

        n)       export POWERLINE_FONT=0 ;;
        N)       export POWERLINE_FONT=0 ;;
        no)      export POWERLINE_FONT=0 ;;
        0)       export POWERLINE_FONT=0 ;;
        disable) export POWERLINE_FONT=0 ;;

        *) echo "Error: unknown argument: $1"; exit 1 ;;
    esac
}
export -f powerline_font
