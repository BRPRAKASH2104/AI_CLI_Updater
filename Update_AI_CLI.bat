@echo off
REM Script to update various AI CLIs on Windows
REM Enable ANSI color support for Windows 10+
setlocal EnableDelayedExpansion

REM Color codes (ANSI escape sequences)
set "ESC="
set "GREEN=%ESC%[32m"
set "BLUE=%ESC%[34m"
set "YELLOW=%ESC%[33m"
set "CYAN=%ESC%[36m"
set "MAGENTA=%ESC%[35m"
set "RED=%ESC%[31m"
set "BOLD=%ESC%[1m"
set "NC=%ESC%[0m"

REM Header
echo.
echo %CYAN%%BOLD%╔══════════════════════════════════════════════╗%NC%
echo %CYAN%%BOLD%║     AI CLI Updater - Starting Process...    ║%NC%
echo %CYAN%%BOLD%╚══════════════════════════════════════════════╝%NC%
echo.

REM Update NPM
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[1/5]%NC% %BOLD%Updating NPM...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
npm install -g npm@latest
echo %GREEN%✓ NPM update completed%NC%
echo.

REM Update Claude CLI
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[2/5]%NC% %BOLD%Updating Claude CLI...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
npm install -g @anthropic-ai/claude-code@latest
REM Alternative: claude update
echo %GREEN%✓ Claude CLI update completed%NC%
echo.

REM Update GitHub Copilot CLI
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[3/5]%NC% %BOLD%Updating GitHub Copilot CLI...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
npm install -g @github/copilot@latest
REM Alternative: gh extension upgrade gh-copilot
echo %GREEN%✓ GitHub Copilot CLI update completed%NC%
echo.

REM Update Codex CLI
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[4/5]%NC% %BOLD%Updating Codex CLI...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
npm install -g @openai/codex@latest
REM Alternative: brew upgrade codex
echo %GREEN%✓ Codex CLI update completed%NC%
echo.

REM Update Gemini CLI
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[5/5]%NC% %BOLD%Updating Gemini CLI...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
npm install -g @google/gemini-cli@latest
echo %GREEN%✓ Gemini CLI update completed%NC%
echo.

REM Completion message
echo %GREEN%%BOLD%╔══════════════════════════════════════════════╗%NC%
echo %GREEN%%BOLD%║  ✓ All AI CLI updates completed successfully! ║%NC%
echo %GREEN%%BOLD%╚══════════════════════════════════════════════╝%NC%
echo.

pause
