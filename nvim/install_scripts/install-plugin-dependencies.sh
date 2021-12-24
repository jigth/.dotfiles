#!/usr/bin/env sh

NL=$'\n' # New line character

function install_ueberzug() {
    PIP_EXECUTABLE="/usr/bin/env pip"
    echo "> Ueberzug (needed for telescope_media_files) will be installed" $'\n'
    echo "> Please provide your sudo password to run the install, it will not be echoed" $'\n'
    eval "sudo $PIP_EXECUTABLE install ueberzug"
}

function install_plugin_dependencies() {
    echo "> Installing Plugin External Dependencies" $'\n'
    install_ueberzug
    echo "> Plugin External Dependencies Installed" $'\n'
}

install_plugin_dependencies
