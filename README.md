# Introduction
**NOTE:** DO NOT make this repo public. There were some mentions to different GitHub issues in your issues while you work on this and making this public will means that the mentions will be visible to everyone on the other issue. See [this SO thread](https://stackoverflow.com/questions/43872026/remove-issue-reference-in-github). Making those mentions visible will trash up the original issue's comment thread with useless information, which is not ideal. If you need to share this with others, create a fork of it instead. That way the issues in this repo won't show up in the fork.

This is my personal Neovim setup. This README.md aims to document the main functionalities and settings of the setup for my own future reference, so I will try to make it as detailed as possible. However, there are things that might be accidentally left out.

# Installation
## Install Neovim and Dependencies
There are a couple of things we need to install along with Neovim to make the configs work correctly. See all the dependencies and explanations for each below so you can decide which feature you need and which one you don't need. Alternatively, you can just run the bash script called `install-all-requirements.sh` to install all the dependencies.

### Neovim
Follow the steps in [neovim documentation](https://github.com/neovim/neovim/blob/master/INSTALL.md) to install Neovim. Note that these configurations will only works with Neovim 0.9.0 and above, and the version in package managers like `apt` might be quite dated, so it is recommended to install using the curl command in the installation guide.

### NerdFont
Go to [nerdfont site](https://www.nerdfonts.com/font-downloads) and download a font of your choice on your machine. I use JetBrainsMono Regular.

### Ripgrep
For livegrep searching using Telescope. Helps with search for content across files.

`sudo apt-get install ripgrep`

### Virtual environment for Python (Optional)
For the Mason and Mason-LSP plugins to install Python LSP correctly (which is set to be installed in this config), you will need to have a virtual environment for Python like python.

`sudo apt-get install python3-venv`

### LSP
#### Eslint
Provides linting for Javascript, Typescript, and some JS frameworks. Do `npm i -g vscode-langservers-extracted`.

### NPM and Nodejs
There are a few LSP that requires npm to run (pyright, HTML, eslint), so you can go through the installation instruction on npm [documentation](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) if you intend to use those LSPs.


## Installing the configs
### Linux
To install the configs, simply `cd ~/.config` and clone the repo. Next time you open Nvim, the configs and plugins should be installed automatically.
