# IDE Configs

## The Problem

Usually with LSP and Neovim, there are some plugins that works as expected when autostarted, no errors come out unexpectedly.

But with some lsp language servers such as TailwindCSS there can be errors because that LSP doesn't found a **'valid root path'**.

## The solution

### Viable Options

I found three possible solutions to this problem

1. Different LSP servers have different **root path definitions**, which can be configured by setting up that specific LSP.

2. Vim and Neovim also allow to execute 'per project configuration', similar to other editors, in this case with a .nvimrc (Neovim) or a .vimrc (Vim) file inside the root of the project. 

### The chosen option (option 2)

To handle some problems with starting servers automatically and some plugins (like Fugitive) I decided to create a configuration that I would use for the VueJS projects I'm working on. The details on how to use it are described in the section bellow.

## Creating per-project Configurations for Vim / Neovim options

The 'set exrc' option allows to do just that for both Vim and Neovim.

The idea is to put under the **ide_configs** directory some configurations for differents development environments. 

It can be used to store the configs for any development environment I want and then symlink those configs executing the following command from the root of any project I'm working on.

Using my .nvimrc from the 'vue/' directory, it would be the following command.

```
ln -s path_to_ide_configs/vue/.nvimrc `pwd`
```

In the code of that .nvimrc there are some commands to start some LSP Servers by demand (or stop them) from Neovim using the **:lspstart serverName** command.

I put all of them in that .nvimrc file to avoid doing multiple commands manually, such as.

```
:lspstart tsserver
:lspstart volar
:lspstart tailwindcss
...
start any other servers manually
```

## Glossary

* **LSP:** Language Server Protocol. A way for different programs to provide intellinsense features in a uniform way.
