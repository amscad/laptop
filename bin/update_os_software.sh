#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
        && . "utils.sh"

local os=""
os="$(get_os)"

if [ "$os" == "macos" ]; then
    print_comment "Updating mac os"
    sudo softwareupdate -i -a
elif [ "$os" == "linux" ]; then
    print_comment "Updating ubuntu(?)"
    sudo apt update
fi

