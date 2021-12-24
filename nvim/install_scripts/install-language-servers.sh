#!/usr/bin/env sh

function install_language_servers() {
    ## Install Language servers with npm
    echo "> Installing language servers globally (requires NPM)" $'\n'
    npm install -g vscode-langservers-extracted # CSS, HTML
    npm install -g typescript typescript-language-server # Typescript
    npm install -g graphql-language-service-cli # GraphQL
    npm install -g @volar/server # Volar (Vue 3 with Typescript)
    npm install -g @tailwindcss/language-server # TailwindCSS
    echo "> Language Servers Installed" $'\n'
}

install_language_servers
