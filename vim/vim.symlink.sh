script_path="$(readlink -f "${BASH_SOURCE[0]}")"
vim_dir="$(dirname "$script_path")"

register_symlink "$HOME/.vimrc" "$vim_dir/_vimrc"
register_symlink "$HOME/.vim" "$vim_dir/vimfiles"
