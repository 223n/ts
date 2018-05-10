#!/bin/bash

COPY_FROM="./localsetup/roles"
WORK_DIR="./localsetup/roles/test"

declare -a roles=()
declare -a roles=(
  "etckeeper"
  "git"
  "gnucash"
  "stride"
  "vscode"
)

declare -a dirs=()
declare -a dirs=(
  "defaults"
  "handler"
  "meta"
  "tasks"
  "templates"
)

for role in "${roles[@]}"; do
  ROLE_FROM="${COPY_FROM}/${role}"
  ROLE_DIR="${WORK_DIR}/roles/${role}"
  if [ -d "${ROLE_DIR}" ]; then
    rm -rf "${ROLE_DIR}/*"
  else
    mkdir -p "${ROLE_DIR}"
  fi
  for dir in "${dirs[@]}"; do
    if [ -d "${ROLE_FROM}/${dir}" ]; then
      cp -pR "${ROLE_FROM}/${dir}" "${ROLE_DIR}";
    fi
  done
done
