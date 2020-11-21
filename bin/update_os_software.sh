#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

print_comment "Updating mac os"
sudo softwareupdate -i -a