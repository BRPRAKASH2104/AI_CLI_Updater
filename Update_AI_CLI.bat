@echo off
REM Script to update various AI CLIs on Windows 11
REM Enable ANSI color support
setlocal EnableDelayedExpansion

REM Color codes (ANSI escape sequences)
REM Dynamically generate the ESC character for terminal colors
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
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

REM Update Node.js via NVM (nvm-windows)
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[1/8]%NC% %BOLD%Updating Node.js via NVM...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo Installing the latest version of Node.js...
call nvm install latest
call nvm use latest
for /f "delims=" %%i in ('node -v') do set NODE_V=%%i
echo %GREEN%✓ Node.js update completed (Using %NODE_V%)%NC%
echo.

REM Update NPM
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[2/8]%NC% %BOLD%Updating NPM...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
call npm install -g npm@latest
echo %GREEN%✓ NPM update completed%NC%
echo.

REM Update Claude CLI
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[3/8]%NC% %BOLD%Updating Claude CLI...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
call npm install -g @anthropic-ai/claude-code@latest --allow-scripts=@anthropic-ai/claude-code
REM Alternative: claude update
echo %GREEN%✓ Claude CLI update completed%NC%
echo.

REM Update GitHub Copilot CLI
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[4/8]%NC% %BOLD%Updating GitHub Copilot CLI...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
call npm install -g @github/copilot@latest
REM Alternative: gh extension upgrade gh-copilot
echo %GREEN%✓ GitHub Copilot CLI update completed%NC%
echo.

REM Update Codex CLI
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[5/8]%NC% %BOLD%Updating Codex CLI...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
call npm install -g @openai/codex@latest
REM Alternative: brew upgrade codex
echo %GREEN%✓ Codex CLI update completed%NC%
echo.

REM Update Gemini CLI
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[6/8]%NC% %BOLD%Updating Gemini CLI...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
call npm install -g @google/gemini-cli@latest --allow-scripts=@github/keytar,node-pty
echo %GREEN%✓ Gemini CLI update completed%NC%
echo.

REM Update Windows Package Manager (Winget - Homebrew Alternative)
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[7/8]%NC% %BOLD%Updating System Packages (Winget)...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
winget upgrade --all --include-unknown
echo %GREEN%✓ System packages update completed%NC%
echo.

REM Update GitNexus
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[8/8]%NC% %BOLD%Updating GitNexus...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
call npm install -g gitnexus --loglevel=error --allow-scripts=gitnexus,@ladybugdb/core,@scarf/scarf,tree-sitter,tree-sitter-c-sharp,tree-sitter-cpp,tree-sitter-go,tree-sitter-java,tree-sitter-javascript,tree-sitter-php,tree-sitter-python,tree-sitter-ruby,tree-sitter-rust,tree-sitter-typescript
set GITNEXUS_MAX_FILE_SIZE=2048
call gitnexus analyze C:\Users\ramprakash\Documents\GitHub\AI_TC_Generator_v04_w_Trainer --force --skills
echo %GREEN%✓ GitNexus update completed%NC%
echo.

REM Completion message
echo %GREEN%%BOLD%╔══════════════════════════════════════════════╗%NC%
echo %GREEN%%BOLD%║  ✓ All AI CLI updates completed successfully! ║%NC%
echo %GREEN%%BOLD%╚══════════════════════════════════════════════╝%NC%
echo.

pause
