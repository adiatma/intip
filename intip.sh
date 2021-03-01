#!/usr/bin/env bash

HOST=http://ip-api.com
OUTPUT="json"
FIELDS="?fields=66846719"

progress_bar() {
  local duration=${1}
    already_done() { for ((done=0; done<$elapsed; done++)); do printf "▇"; done }
    remaining() { for ((remain=$elapsed; remain<$duration; remain++)); do printf " "; done }
    percentage() { printf "| %s%%" $(( (($elapsed)*100)/($duration)*100/100 )); }
    clean_line() { printf "\r"; }

  for (( elapsed=1; elapsed<=$duration; elapsed++ )); do
      already_done; remaining; percentage
      clean_line
  
  done
    clean_line
}

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
  progress_bar 100
  URL="${HOST}/${OUTPUT}/${IP_LOCATION}${FIELDS}"
  GET_DATA=$(curl "$URL" --silent)
}

read_inline() {
  IP_LOCATION=${1}
  progress_bar 100
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

cat <<EOF | \
  sed -re 's@(\[|\]|\{|\})@@g' -e 's/,/\n/g' | \
  sed -re 's@"(\w+)":\s*"?([^"]*)"?@json_\1="\2"@g'


"👀"

$GET_DATA

EOF

fi
