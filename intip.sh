#!/usr/bin/env bash

prompt_read_ip() {
  echo -n "Your ip?: "
  read ip
}

fetch_data() {
  URL="http://ip-api.com/json/${ip}"
  GET_DATA=$(curl "$URL" --silent)
}

prompt_read_ip
fetch_data

cat <<EOF | \
  sed -re 's@(\[|\]|\{|\})@@g' -e 's/,/\n/g' | \
  sed -re 's@"(\w+)":\s*"?([^"]*)"?@json_\1="\2"@g'
$GET_DATA
EOF

