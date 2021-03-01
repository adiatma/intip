#!/usr/bin/env bash

HOST=http://ip-api.com
OUTPUT="json"
FIELDS="?fields=66846719"

print_help() {
  cat <<EOF

  👀 intip.sh

  Usage:
    
    --inline: to print with inline mode
    --prompt: to print with prompt mode

EOF
}

prompt_read_ip() {
  echo -n "Input your ip in here?: "
  read IP_LOCATION
  URL="${HOST}/${OUTPUT}/${IP_LOCATION}${FIELDS}"
  GET_DATA=$(curl "$URL" --silent)
}

read_inline() {
  IP_LOCATION=${1}
  URL="${HOST}/${OUTPUT}/${IP_LOCATION}${FIELDS}"
  GET_DATA=$(curl "$URL" --silent)
}

case "$1" in
  --inline)
    read_inline $2
    ;;
  --prompt)
    prompt_read_ip
    ;;
  *)
    print_help
    ;;
esac

if [[ -n "${GET_DATA}" ]]; then
  command printf "\n";
  echo $GET_DATA | jq
fi
