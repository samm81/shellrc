# `source`d for interactive *login* `zsh` shells

LOGIND_DIR="$HOME/.login.d"
if [ -d "$LOGIND_DIR" ]; then
  for f in "$LOGIND_DIR"/*.sh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi

# no need to explicitly `source` our rc file, `zsh` already does this
