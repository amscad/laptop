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
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0-rc1
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

install_asdf_plugin "java" "https://github.com/halcyon/asdf-java.git"
install_asdf_plugin "maven" "https://github.com/halcyon/asdf-maven"
install_asdf_plugin "gradle" "https://github.com/rfrancis/asdf-gradle.git"
install_asdf_plugin "groovy" "https://github.com/weibemoura/asdf-groovy.git"
install_asdf_plugin "grails" "https://github.com/weibemoura/asdf-grails.git"
install_asdf_plugin "kotlin" "https://github.com/missingcharacter/asdf-kotlin.git"

install_asdf_plugin "dart" "https://github.com/patoconnor43/asdf-dart.git"
install_asdf_plugin "flutter" "https://github.com/oae/asdf-flutter"
install_asdf_plugin "firebase" "https://github.com/jthegedus/asdf-firebase.git"

install_asdf_plugin "python" "https://github.com/danhper/asdf-python"

install_asdf_plugin "neovim" "https://github.com/richin13/asdf-neovim"

install_asdf_plugin "postgres"

install_asdf_language() {
  local language="$1"
  local version="$2"
  if [ "$version" == "latest" ]; then
    version="$(asdf list-all "$language" | grep -v "[a-z]" | tail -1)"
  fi
  
  echo "Installing $language $version"

  if ! asdf list "$language" | grep -Fq "$version"; then
    asdf install "$language" "$version"
    asdf global "$language" "$version"
  fi
}

echo "Installing latest Ruby..."
install_asdf_language "ruby" "latest"
gem update --system
gem_install_or_update "bundler"
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))

echo "Installing latest Node..."
bash "$HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring"
install_asdf_language "nodejs" "latest"

echo "Installing latest yarn"
bash "npm install -g yarn"

echo "Installing latest grunt"
bash "npm install -g grunt"


echo "Installing Java 8"
install_asdf_language "java" "adoptopenjdk-8.0.265+1.openj9-0.21.0"

echo "Installing Java 11"
install_asdf_language "java" "adoptopenjdk-11.0.8+10.openj9-0.21.0"

echo "Installing latest Maven"
install_asdf_language "maven" "latest"

echo "Installing latest gradle"
install_asdf_language "gradle" "latest"

echo "Installing latest groovy"
install_asdf_language "groovy" "groovy-binary-2.4.3"
echo "Installing latest grails"
install_asdf_language "grails" "latest"
echo "Installing latest kotlin"
install_asdf_language "kotlin" "latest"

echo "Installing latest dart"
install_asdf_language "dart" "latest"
echo "Installing latest flutter"
install_asdf_language "flutter" "1.20.2-stable"
echo "Installing latest firebase"
install_asdf_language "firebase" "latest"

echo "Installing latest python"
install_asdf_language "python" "latest"

echo "Installing stable neovim"
install_asdf_language "neovim" "stable"

echo "Installing latest stable postgresql"
install_asdf_language "postgres" "latest"