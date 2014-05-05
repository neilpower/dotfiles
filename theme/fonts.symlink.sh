script_path="$(readlink -f "${BASH_SOURCE[0]}")"
font_dir="$(dirname "$script_path")/powerline-fonts"

while read -d '' -r font <&9; do
    register_symlink "$HOME/.fonts/$(basename "$font")" "$font"
done 9< <(find "$font_dir" -regex '.*\(\.ttf\|\.otf\)' -print0)
