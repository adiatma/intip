#!/usr/bin/env bash
PLATFORM=uname

SOURCE=https://raw.githubusercontent.com/adiatma/intip/master/intip.sh
BIN_LOCATION="/usr/local/bin/"

JQ_BIN_LOCATION=/usr/local/bin/jq
JQ_VERSION=jq-1.6
JQ_OSX=jq-osx-amd64
JQ_LINUX=jq-linux64
JQ_DOWNLOAD=https://github.com/stedolan/jq/releases/download

progress_bar() {
  local duration=${1}
    already_done() { for ((done=0; done<$elapsed; done++)); do printf ":"; done }
    remaining() { for ((remain=$elapsed; remain<$duration; remain++)); do printf " "; done }
    percentage() { printf "| %s%%" $(( (($elapsed)*100)/($duration)*100/100 )); }
    clean_line() { printf "\r"; }

  for (( elapsed=1; elapsed<=$duration; elapsed++ )); do
      already_done; remaining; percentage
      clean_line
  
  done
    clean_line
}

download_and_install_intip() {
  command curl -fsSL ${SOURCE} -o $HOME/intip.sh
  command mv $HOME/intip.sh $BIN_LOCATION
  command chmod +x $BIN_LOCATION/intip.sh
}

download_and_install_jq() {
  if [[ "$PLATFORM" -eq "Darwin" ]]; then
    command curl -fsSL "$JQ_DOWNLOAD/$JQ_VERSION/$JQ_OSX" -o $HOME/jq
    command mv $HOME/jq $JQ_BIN_LOCATION
    command chmod +x $JQ_BIN_LOCATION
  elif [[ "$PLATFORM" -eq "Linux" ]]; then
    command curl -fsSL "$JQ_DOWNLOAD/$JQ_VERSION/$JQ_LINUX" -o $HOME/jq
    command mv $HOME/jq $JQ_BIN_LOCATION
    command chmod +x $JQ_BIN_LOCATION
  else
    echo "😥 sorry currently just support (Darwin|Linux), please install jq by manual"
  fi
}

main() {
  if [[ ! -s "$JQ_BIN_LOCATION" ]]; then
    echo "🚀 download and install jq"
    progress_bar 100
    printf "\n"
    download_and_install_jq
  fi

  echo "🚀 download and install intip.sh"
  progress_bar 100
  printf "\n"
  download_and_install_intip
}

main

cat <<EOF

 👀 intip.sh

 Yey, congratulations, intip.sh success to install in your computer.

 * Please try with execute intip.sh --inline.
 * Please dont forget to click star in https://github.com/adiatma/intip

 thanks :)

EOF
