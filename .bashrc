# run for interactive non-login shells

# this file is also sourced by some apparently interactive shells such as `scp`
# and `rcp` that can't tolerate any output. so make sure this doesn't display
# anything or bad things will happen !

# test for an interactive shell. there is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
[[ $- != *i* ]] && return

RCD_DIR="$HOME/.rc.d"
if [ -d "$RCD_DIR" ]; then
  for f in "$RCD_DIR"/*.sh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi

RCD_DIR="$HOME/.bashrc.d"
if [ -d "$RCD_DIR" ]; then
  for f in "$RCD_DIR"/*.sh; do
    # shellcheck disable=SC1090
    [ -r "$f" ] && . "$f"
  done
fi
