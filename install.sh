#!/bin/bash

# Configuration
COW_DIR="$HOME/.custom_cows"
GITHUB_USER="melbi-lang"
REPO_NAME="cowsay"
RAW_URL="https://raw.githubusercontent.com/$GITHUB_USER/$REPO_NAME/main/cows"

# List of cows you want to download (add more as you create them)
COWS=("melbi.cow" "melbi-large.cow" "melbi-large-tc.cow")

echo "🖖 Welcome to Melbi cows installer."
echo "This script will download custom cows and set up your environment."
echo "Cows will be stored in: $COW_DIR"
echo "And COWPATH will be added to your shell configuration."
read -p "Press [Enter] to continue or [Ctrl+C] to cancel..."
echo

echo "🐮 Setting up your custom cows..."

# Create directory
mkdir -p "$COW_DIR"

# Download files
for cow in "${COWS[@]}"; do
    echo "  -> Downloading $cow..."
    curl -sSL -o "$COW_DIR/$cow" "$RAW_URL/$cow"
done

# Detect Shell Config
if [[ "$SHELL" == */zsh ]]; then
    CONF="$HOME/.zshrc"
else
    CONF="$HOME/.bashrc"
fi

# Append COWPATH if not already there
if ! grep -q "COWPATH.*$COW_DIR" "$CONF"; then
    echo -e "\n# Custom Cowsay Path\nexport COWPATH=\$COWPATH:$COW_DIR" >> "$CONF"
    echo "✅ Added COWPATH to $CONF"
else
    echo "ℹ️ COWPATH already exists in $CONF"
fi

echo -e "\nDone! Restart your terminal or run: source $CONF"
