# ~/.bashrc
BASHRC_DIR="${HOME}/.bashrc.d"

if [[ -d "$BASHRC_DIR" ]]; then
  for f in "$BASHRC_DIR"/*.sh; do
    [[ -r "$f" ]] && source "$f"
  done
fi
