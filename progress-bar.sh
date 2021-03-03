#!/usr/bin/env bash

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

