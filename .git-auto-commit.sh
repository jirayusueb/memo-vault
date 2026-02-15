#!/bin/bash
# Auto-commit script for Obsidian vault

VAULT_DIR="$HOME/Documents/memo-vault"
COMMIT_MSG="Auto-commit: $(date +'%Y-%m-%d %H:%M:%S')"

cd "$VAULT_DIR" || exit 1

# Check if there are changes
if git diff --quiet && git diff --cached --quiet; then
    exit 0  # No changes
fi

# Add all changes and commit
git add -A
git commit -m "$COMMIT_MSG"
git push
