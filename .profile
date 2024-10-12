# `source`d for interactive *login* `sh` shells

LOGIND_DIR="$HOME/.login.d"
if [ -d "$LOGIND_DIR" ]; then
  for f in "$LOGIND_DIR"/*.sh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi

RC_FILE="$HOME/.shrc"
# `sh` does not have a default `rc` file like `bash` and `zsh` do, it will look to the `ENV` variable for a file to source for non-login interactive shells
[ -f "$RC_FILE" ] && ENV="$HOME/.shrc" && export ENV
