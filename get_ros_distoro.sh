#!/bin/bash
function main(){
    readonly VERSION_ID=`cat /etc/os-release|grep VERSION_ID`
    if [[ $VERSION_ID =~ "16." ]]; then
        echo "kinetic"
    elif [[ $VERSION_ID =~ "18." ]]; then
        echo "melodic"
    else
        echo "*** ${VERSION_ID} is not supported ***"
    fi
}

main "$@"