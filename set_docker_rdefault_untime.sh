#!/bin/bash

function main(){
    local -r TARGET="/etc/docker/daemon.json"
    local -r LINE="\"default-runtime\": \"nvidia\""
    if grep -q "${LINE}" "${TARGET}"; then
        echo "${LINE} is already set in ${TARGET}"
    else
        sudo sed --in-place=.org -e "s/^{/{\n    ${LINE},/g" ${TARGET}
        echo "Finish docker setup"
        cat ${TARGET}
    fi
}

main "$@"
