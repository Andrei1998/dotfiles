# Installation Guide

## 1. Clone Repo with Submodule Cloning

Clone with submodule cloning:

```bash
git clone --recurse-submodules -j8 https://github.com/Andrei1998/dotfiles.git
```

or clone, and then clone submodules:

```bash
git clone https://github.com/Andrei1998/dotfiles.git
git submodule update --init --recursive
```

## 2. Install GNU Stow

```bash
sudo apt-get install stow
```

## 3. Use Stow

```bash
cd ~/dotfiles
stow vim
```

**Note** This will attempt to write `~/.vimrc`, failing if it already exists. Delete `~/.vimrc` if this error occurs, making sure to save any relevant changes beforehand.

**Note** The following command assumes Zsh is already installed.

```bash
stow zsh
```

**Note** This will attempt to write `~/.zshrc`, failing if it already exists. Delete `~/.zshrc` if this error occurs, making sure to save any relevant changes beforehand.

```bash
stow zsh-plugins
```

## 4. Install fzf (https://github.com/junegunn/fzf)

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

**Note** When installing fzf enable auto-completion, key bindings and update shell configuration files.
