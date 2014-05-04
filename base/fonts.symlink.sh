font_dir="$(dirname "$0")/powerline-fonts"
find "$font_dir" -regex '.*\(\.ttf\|\.otf\)' -print0 | while read -d '' -r font; do
    echo "$HOME/.fonts/$(basename "$font"):$font"
done
