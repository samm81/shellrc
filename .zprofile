# run for interactive login shells

LOGIND_DIR="$HOME/.login.d"
if [ -d "$LOGIND_DIR" ]; then
  for f in "$LOGIND_DIR"/*.sh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi

# explicitly load our rc file so that interactive login shells are just
# enhanced interative shells
RC_FILE="$HOME/.zshrc"
# `setopt nologin` because our `.zshrc` explicitly aborts if it detects that it
# is a login shell in order to match the behavior of other shells (`bash` `sh`)
[ -f "$RC_FILE" ] && [ -r "$RC_FILE" ] && setopt nologin && . "$RC_FILE"
