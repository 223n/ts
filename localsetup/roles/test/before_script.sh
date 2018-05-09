#!/bin/sh

WORK_DIR="./localsetup/roles/test"

for role in "etckeeper git gnucash stride vscode";
    ROLE_DIR="${WORK_DIR}/roles/${role}"
    if [ -d ${ROLE_DIR} ]; then
        rm -rf "${ROLE_DIR}/*"
    else
        mkdir -p "${ROLE_DIR}"
    fi
    for dir in "defaults handler meta tasks templates";
        do cp -pR "${dir}" "${ROLE_DIR}";
    done
done
