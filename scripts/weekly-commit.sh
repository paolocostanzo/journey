#!/bin/bash

# Script to commit and push weekly changes
# Usage: ./scripts/weekly-commit.sh "Commit message"

# Check if commit message provided
if [ $# -eq 0 ]; then
    WEEK=$(date +%V)
    MESSAGE="Week ${WEEK} update"
else
    MESSAGE="$1"
fi

echo "📝 Staging all changes..."
git add .

echo "💾 Committing with message: \"${MESSAGE}\""
git commit -m "${MESSAGE}

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

if [ $? -eq 0 ]; then
    echo "✅ Commit successful!"
    echo "🚀 Pushing to remote..."
    git push

    if [ $? -eq 0 ]; then
        echo "✅ Successfully pushed to GitHub!"
        echo ""
        echo "🔗 View your journey: https://github.com/paolocostanzo/journey"
    else
        echo "❌ Push failed. Check your connection or permissions."
        exit 1
    fi
else
    echo "❌ Commit failed. Check git status for issues."
    exit 1
fi
