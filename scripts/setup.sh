#!/bin/bash

# Function to check if Homebrew is installed
check_brew_installed() {
    if ! command -v brew &>/dev/null; then
        return 1
    else
        return 0
    fi
}

# Install Homebrew if not already installed
install_brew() {
    if ! check_brew_installed; then
        echo "Homebrew not found. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
}

# Install gh (GitHub CLI) using Homebrew
install_gh() {
    if check_brew_installed; then
        echo "Installing GitHub CLI (gh) using Homebrew..."
        brew install gh
    else
        echo "Homebrew is not installed. Cannot install gh."
        exit 1
    fi
}

# Main script execution
install_brew
install_gh

echo "Provisioning completed successfully."
