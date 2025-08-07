# ~/.bashrc.d/correction.sh

declare -A CMD_FIXES=(
  [sl]=ls
  [grpe]=grep
  [cd..]="cd .."
  [lsit]=ls
  [makedir]=mkdir
)

function command_not_found_handle() {
  local input="$1"
  if [[ -n "${CMD_FIXES[$input]}" ]]; then
    echo -e "${C_YELLOW}Did you mean: ${CMD_FIXES[$input]} ? Running it now...${C_RESET}"
    "${CMD_FIXES[$input]}" "${@:2}"
  else
    echo -e "${C_RED}Command not found: $input${C_RESET}"
    return 127
  fi
}
