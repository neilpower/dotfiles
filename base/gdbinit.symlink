define printqstring
    printf "(QString)0x%x (length=%i): \"",&$arg0,$arg0.d->size
    set $i=0
    while $i < $arg0.d->size
        set $c=$arg0.d->data[$i++]
        if $c < 32 || $c > 127
                printf "\\u0x%04x", $c
        else
                printf "%c", (char)$c
        end
    end
    printf "\"\n"
end

# Tells GDB to debug a forked process at the same same as a parent one
#set detach-on-fork off

# Tells GDB to debug the child process and suspend the parent when a fork occurs
#set follow-fork-mode child

# Tells GDB to print information about forks as they happen
set print inferior-events on

# Tells GDB to let you use the GDB console while the program is running
#set target-async on
