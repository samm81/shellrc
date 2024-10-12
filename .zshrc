# run for interactive non-login shells

# get `zsh` to behave like other shells and not execute `~/.zshrc` on login
[[ -o 'login' ]] && return

RCD_DIR="$HOME/.rc.d"
if [ -d "$RCD_DIR" ]; then
  for f in "$RCD_DIR"/*.sh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi

RCD_DIR="$HOME/.zshrc.d"
if [ -d "$RCD_DIR" ]; then
  for f in "$RCD_DIR"/*.sh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi
