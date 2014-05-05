local script_path="$(readlink -f "${BASH_SOURCE[0]}")"
local dircolors_file="$(dirname "$script_path")/dircolors-solarized/dircolors.ansi-dark"
eval "$(dircolors -b "$dircolors_file")"
