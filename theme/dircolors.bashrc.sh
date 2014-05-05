script_path="$(readlink -f "${BASH_SOURCE[0]}")"
dircolors_file="$(dirname "$script_path")/dircolors-solarized/dircolors.ansi-dark"
eval "$(dircolors -b "$dircolors_file")"
