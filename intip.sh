#!/usr/bin/env bash

HOST=http://ip-api.com

prompt_read_ip() {
  echo -n "Your ip?: "
  read IP_LOCATION
  URL="${HOST}/json/${IP_LOCATION}"
  GET_DATA=$(curl "$URL" --silent)
}

read_inline() {
  IP_LOCATION=${1}
  URL="${HOST}/json/${IP_LOCATION}"
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
    echo "Usage: (--inline|--prompt)"
    ;;
esac

cat <<EOF | \
  sed -re 's@(\[|\]|\{|\})@@g' -e 's/,/\n/g' | \
  sed -re 's@"(\w+)":\s*"?([^"]*)"?@json_\1="\2"@g'
$GET_DATA
EOF

