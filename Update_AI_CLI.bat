@echo off
echo Updating AI CLIs...

echo.
echo Updating Claude CLI...
npm install -g @anthropic-ai/claude-code@latest
REM Alternatively, if you use the claude command's built-in update:
REM claude update

echo.
echo Updating GitHub Copilot CLI...
npm install -g @github/copilot@latest
REM If installed as a gh extension:
REM gh extension upgrade gh-copilot

echo.
echo Updating Codex CLI...
npm install -g @openai/codex@latest

echo.
echo Updating Gemini CLI...
npm install -g @google/gemini-cli@latest

echo.
echo AI CLI update process completed.
pause
