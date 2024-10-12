# `source`d for *all* interactive `zsh` shells

RCD_DIR="$HOME/.rc.d"
if [ -d "$RCD_DIR" ]; then
  for f in "$RCD_DIR"/*.sh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi

RCD_DIR="$HOME/.zshrc.d"
if [ -d "$RCD_DIR" ]; then
  for f in "$RCD_DIR"/*.zsh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi
