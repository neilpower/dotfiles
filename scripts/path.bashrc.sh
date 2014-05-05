script_path="$(readlink -f "${BASH_SOURCE[0]}")"
script_dir="$(dirname "$script_path")"
export PATH="$script_dir:$PATH"
