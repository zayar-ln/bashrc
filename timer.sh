# ~/.bashrc.d/timer.sh

function preexec() { timer=${SECONDS}; }
function precmd() {
  local duration=$((SECONDS - timer))
  if (( duration > 2 )); then
    echo -e "${C_BLUE}⏱️ Command took ${duration}s${C_RESET}"
  fi
}

# Hook to prompt
PROMPT_COMMAND="precmd; $PROMPT_COMMAND"
trap 'preexec' DEBUG
