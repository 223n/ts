#!/bin/sh

check_return_code() {
  if [ $? -ne 0 ]; then
    exit 1
  fi
}

check_which() {
  which $1
  check_return_code
}

#    - etckeeper
#    - git
#    - gnucash
#    - stride
#    - vscode

check_which etckeeper
check_which git
check_which gnucash
check_which stride
check_which vscode
