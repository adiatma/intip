#!/usr/bin/env bash

SOURCE=https://raw.githubusercontent.com/adiatma/intip/master/intip.sh
BIN_LOCATION="/usr/local/bin/"

download() {
  command curl ${SOURCE} -o $HOME/intip.sh
  command cp $HOME/intip.sh $BIN_LOCATION
  command chmod +x $BIN_LOCATION/intip.sh
  command rm -f $HOME/intip.sh
}

download
