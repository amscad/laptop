#!/bin/sh
# PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin
#https://stackoverflow.com/questions/192292/bash-how-best-to-include-other-scripts

# Get the config path - used to include other files 
SCRIPT_PATH=`dirname "$(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")"`
PARENT_PATH=`dirname "$SCRIPT_PATH"`
CONFIG_PATH="$PARENT_PATH/config"
BIN_PATH="$PARENT_PATH/bin"
source "$BIN_PATH/functions.sh"


###################################[ version manager ]########################
echo "Configuring asdf version manager..."
if [ ! -d "$HOME/.asdf" ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.1
  append_to_zshrc "source $HOME/.asdf/asdf.sh" 1
  append_to_zshrc "source $HOME/.asdf/completions/asdf.bash" 1
fi

install_asdf_plugin() {
  local name="$1"
  local url="$2"

  if ! asdf plugin-list | grep -Fq "$name"; then
    asdf plugin-add "$name" "$url"
  fi
}

# shellcheck disable=SC1090
source "$HOME/.asdf/asdf.sh"
install_asdf_plugin "nodejs" "https://github.com/asdf-vm/asdf-nodejs.git"
install_asdf_plugin "ruby" "https://github.com/asdf-vm/asdf-ruby.git"

install_asdf_language() {
  local language="$1"
  local version
  version="$(asdf list-all "$language" | grep -v "[a-z]" | tail -1)"

  if ! asdf list "$language" | grep -Fq "$version"; then
    asdf install "$language" "$version"
    asdf global "$language" "$version"
  fi
}

echo "Installing latest Ruby..."
install_asdf_language "ruby"
gem update --system
gem_install_or_update "bundler"
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))

echo "Installing latest Node..."
bash "$HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring"
install_asdf_language "nodejs"

echo "Installing latest yarn"
bash "npm install -g yarn"

echo "Installing latest grunt"
bash "npm install -g grunt"