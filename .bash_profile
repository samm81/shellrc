# run for interactive login shells
# or non-interactive shells with the `--login` option

LOGIND_DIR="$HOME/.login.d"
if [ -d "$LOGIND_DIR" ]; then
  for f in "$LOGIND_DIR"/*.sh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi

# explicitly load our rc file so that interactive login shells are just
# enhanced interative shells
RC_FILE="$HOME/.bashrc"
# shellcheck disable=SC1090
[ -f "$RC_FILE" ] && [ -r "$RC_FILE" ] && . "$RC_FILE"
