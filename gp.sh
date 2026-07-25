#!/bin/bash

# ==== EDIT THESE ====
USERNAME="udonla"
PASSWORD="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"
# =====================

# Stage all changes
git add .

# Ask for commit message
read -p "Enter commit message: " commit_message
git commit -m "$commit_message"

# Push using username/password (embedded in URL)
# Assumes origin is an HTTPS URL, e.g. https://github.com/user/repo.git
remote_url=$(git config --get remote.origin.url)

# Strip protocol prefix to inject credentials
repo_path=${remote_url#https://}

git push "https://$USERNAME:$PASSWORD@$repo_path" main
