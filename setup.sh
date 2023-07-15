#!/bin/bash

# Command 1: Install Homebrew
echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
status=$?
if [ $status -eq 0 ]; then
  echo "Homebrew installed successfully."
else
  echo "Failed to install Homebrew."
fi

# Command 4: Append eval statement to .zprofile
username=$(whoami)
echo "(echo; echo 'eval \"\$(/opt/homebrew/bin/brew shellenv)\"') >> /Users/$username/.zprofile"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/$username/.zprofile
status=$?
if [ $status -eq 0 ]; then
  echo "eval statement appended to .zprofile successfully."
else
  echo "Failed to append eval statement to .zprofile."
fi

# Command 2: Update Homebrew
echo "Updating Homebrew"
brew update
status=$?
if [ $status -eq 0 ]; then
  echo "Homebrew updated successfully."
else
  echo "Failed to update Homebrew."
fi

# Command 3: Install pyenv
echo "Installing pyenv"
brew install pyenv
status=$?
if [ $status -eq 0 ]; then
  echo "pyenv installed successfully."
else
  echo "Failed to install pyenv."
fi
