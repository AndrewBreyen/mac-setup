# Command Line

## Auto install

Run in a terminal:

```bash
mac-setup/setup-gpt.sh
```

## Manual Install

### Install brew

1. Open terminal
2. run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install Pyenv

1. Open terminal
2. run:

```bash
brew update
brew install pyenv
pyenv init
exec $SHELL
```

### Install Python

1. Open terminal
2. run:

```bash
brew install openssl readline sqlite3 xz zlib tcl-tk
```
