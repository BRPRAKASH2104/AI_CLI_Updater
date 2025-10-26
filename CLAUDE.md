# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a simple automation utility that updates multiple AI CLI tools with a single command. The project consists of two parallel scripts that perform identical functions on different platforms:

- `Update_AI_CLI.sh` - For macOS/Linux (Bash)
- `Update_AI_CLI.bat` - For Windows (Batch)

Both scripts update npm and 4 AI CLIs: Claude Code, GitHub Copilot, OpenAI Codex, and Google Gemini.

## Architecture

### Script Design Philosophy

The scripts are intentionally simple with **no external dependencies** beyond Node.js/npm. They:
- Execute updates sequentially (not parallel) for reliability
- Use npm's global install with `@latest` flag for all packages
- Provide visual progress feedback using ANSI color codes
- Include commented alternative installation methods for user reference

### Cross-Platform Consistency

Both scripts **must remain structurally identical** with only syntax differences between Bash and Batch. When modifying one script, apply the equivalent change to the other.

Key structural elements maintained across both:
1. Header box announcing start
2. NPM update as step [1/5]
3. Four AI CLI updates as steps [2/5] through [5/5]
4. Progress indicators with step numbers
5. Visual separators using unicode box characters
6. Success checkmarks (✓) after each update
7. Completion box at end

### Color Implementation

**Bash (Update_AI_CLI.sh):**
- Uses ANSI escape sequences: `\033[0;32m` for colors
- Applied via `echo -e` flag
- Colors defined as variables at script start

**Batch (Update_AI_CLI.bat):**
- Uses ANSI escape sequences embedded in variables
- Requires literal ESC character (0x1B) in color variables
- Requires `setlocal EnableDelayedExpansion` for variable expansion
- Works on Windows 10+ with native ANSI support

Color scheme (identical in both scripts):
- Cyan: Header/footer boxes
- Blue: Section dividers
- Yellow: Progress numbers [X/5]
- Green: Success messages and checkmarks
- Bold: Tool names

## Common Tasks

### Testing Scripts

**macOS/Linux:**
```bash
chmod +x Update_AI_CLI.sh
./Update_AI_CLI.sh
```

**Windows:**
```cmd
Update_AI_CLI.bat
```

### Adding a New CLI Tool

When adding a new CLI to update:

1. Update the progress numbers (e.g., [1/6], [2/6], etc.) in BOTH scripts
2. Add the new section before the completion message in BOTH scripts
3. Follow the exact structure:

**Bash format:**
```bash
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[X/Y]${NC} ${BOLD}Updating Tool Name...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @package/name@latest
# Alternative: alternative-command
echo -e "${GREEN}✓ Tool Name update completed${NC}"
echo ""
```

**Batch format:**
```batch
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
echo %YELLOW%[X/Y]%NC% %BOLD%Updating Tool Name...%NC%
echo %BLUE%━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━%NC%
npm install -g @package/name@latest
REM Alternative: alternative-command
echo %GREEN%✓ Tool Name update completed%NC%
echo.
```

### Alternative Installation Methods

The scripts include commented alternative installation methods:
- `claude update` - Built-in Claude CLI updater
- `gh extension upgrade gh-copilot` - For GitHub CLI extension
- `brew upgrade codex` - For Homebrew installations

These alternatives should remain as comments for user reference but can be uncommented if npm installation is not the primary method.

## Important Constraints

1. **Keep scripts synchronized**: Any structural change must be applied to both scripts
2. **Maintain visual consistency**: Progress indicators, separators, and messages must match
3. **No complex logic**: Scripts should remain simple sequential updates
4. **Comments matter**: Alternative installation methods help users customize scripts
5. **Line endings**: `.gitattributes` enforces LF endings - maintain this for cross-platform compatibility
