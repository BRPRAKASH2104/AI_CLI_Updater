#!/bin/bash

# Script to update various AI CLIs on macOS

echo "Updating AI CLIs..."

# Update Claude CLI (assuming installation via npm)
echo "Updating Claude CLI..."
npm install -g @anthropic-ai/claude-code@latest
# Alternatively, if you use the claude command's built-in update:
# claude update

# Update GitHub Copilot CLI (assuming installation via npm)
echo "Updating GitHub Copilot CLI..."
npm install -g @github/copilot@latest
# If installed as a gh extension:
# gh extension upgrade gh-copilot

# Update Codex CLI (assuming installation via npm)
echo "Updating Codex CLI..."
npm install -g @openai/codex@latest
# If installed via Homebrew:
# brew upgrade codex

# Update Gemini CLI (assuming installation via npm)
echo "Updating Gemini CLI..."
npm install -g @google/gemini-cli@latest

echo "AI CLI update process completed."
