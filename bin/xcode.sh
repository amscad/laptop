#!/bin/bash

## borrowed and adapted from https://github.com/alrra/dotfiles/

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

agree_with_xcode_licence() {

    # Automatically agree to the terms of the `Xcode` license.
    # https://github.com/alrra/dotfiles/issues/10
    print_warning "Please enter your passwword to agreed to the xcode licence"
    sudo xcodebuild -license accept &> /dev/null
    print_result $? "Agree to the terms of the Xcode licence"

}

are_xcode_command_line_tools_installed() {
    xcode-select --print-path &> /dev/null
}

install_xcode() {

    # If necessary, prompt user to install `Xcode`.
    if ! is_xcode_installed; then
      print_warning "Please install Xcode from the app store"
    fi

    # Wait until `Xcode` is installed.
    execute \
        "until is_xcode_installed; do \
            sleep 5; \
         done" \
        "Xcode.app"

}

install_xcode_command_line_tools() {
  # If necessary, prompt user to install the `Xcode Command Line Tools`.
  if [ ! are_xcode_command_line_tools_installed ]; then
    xcode-select --install &> /dev/null
  fi

  # Wait until the `Xcode Command Line Tools` are installed.
  execute \
      "until are_xcode_command_line_tools_installed; do \
          sleep 5; \
        done" \
      "Xcode Command Line Tools"
}

is_xcode_installed() {
    [ -d "/Applications/Xcode.app" ]
}

set_xcode_developer_directory() {

    # Point the `xcode-select` developer directory to
    # the appropriate directory from within `Xcode.app`.
    #
    # https://github.com/alrra/dotfiles/issues/13
    declare XCODE_DEVELOPER_HOME="/Applications/Xcode.app/Contents/Developer"
    declare XCODE_COMMAND_LINE_PATH="$(xcode-select --print-path)"

    if [ "$XCODE_COMMAND_LINE_PATH" != "$XCODE_DEVELOPER_HOME" ]; then
      sudo xcode-select -switch "$XCODE_DEVELOPER_HOME" &> /dev/null
      print_result $? "Make 'xcode-select' developer directory point to the appropriate directory from within Xcode.app"
      # ask user to agree to the licence
      agree_with_xcode_licence
    fi

}

main() {

    install_xcode_command_line_tools
    install_xcode
    set_xcode_developer_directory

}

########################[ Command line xcode ]#####################################################
main
