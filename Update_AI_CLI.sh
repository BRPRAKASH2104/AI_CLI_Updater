#!/bin/bash

# Script to update various AI CLIs on macOS/Linux
# Color definitions
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
RED='\033[0;31m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Header
echo ""
echo -e "${BOLD}${CYAN}╔══════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}${CYAN}║     AI CLI Updater - Starting Process...    ║${NC}"
echo -e "${BOLD}${CYAN}╚══════════════════════════════════════════════╝${NC}"
echo ""

# Update NPM
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[1/8]${NC} ${BOLD}Updating NPM...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g npm@latest
echo -e "${GREEN}✓ NPM update completed${NC}"
echo ""

# Update Claude CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[2/8]${NC} ${BOLD}Updating Claude CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @anthropic-ai/claude-code@latest --allow-scripts=@anthropic-ai/claude-code
# Alternative: claude update
echo -e "${GREEN}✓ Claude CLI update completed${NC}"
echo ""

# Update GitHub Copilot CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[3/8]${NC} ${BOLD}Updating GitHub Copilot CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @github/copilot@latest
# Alternative: gh extension upgrade gh-copilot
echo -e "${GREEN}✓ GitHub Copilot CLI update completed${NC}"
echo ""

# Update Codex CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[4/8]${NC} ${BOLD}Updating Codex CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @openai/codex@latest
# Alternative: brew upgrade codex
echo -e "${GREEN}✓ Codex CLI update completed${NC}"
echo ""

# Update Gemini CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[5/8]${NC} ${BOLD}Updating Gemini CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @google/gemini-cli@latest --allow-scripts=@github/keytar,node-pty
echo -e "${GREEN}✓ Gemini CLI update completed${NC}"
echo ""

# Update Homebrew
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[6/8]${NC} ${BOLD}Updating Homebrew...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
brew update
echo -e "${GREEN}✓ Homebrew update completed${NC}"
echo ""

# Update GitNexus
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[7/8]${NC} ${BOLD}Updating GitNexus...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g gitnexus --loglevel=error --allow-scripts=gitnexus,@ladybugdb/core,@scarf/scarf,tree-sitter,tree-sitter-c-sharp,tree-sitter-cpp,tree-sitter-go,tree-sitter-java,tree-sitter-javascript,tree-sitter-php,tree-sitter-python,tree-sitter-ruby,tree-sitter-rust,tree-sitter-typescript
export GITNEXUS_MAX_FILE_SIZE=2048
gitnexus analyze /Users/ramprakash/Documents/GitHub/AI_TC_Generator_v04_w_Trainer --force --skills
echo -e "${GREEN}✓ GitNexus update completed${NC}"
echo ""

# Update Mole
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[8/8]${NC} ${BOLD}Updating Mole...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
mole update
echo -e "${GREEN}✓ Mole update completed${NC}"
echo ""

# Completion message
echo -e "${BOLD}${GREEN}╔══════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}${GREEN}║  ✓ All AI CLI updates completed successfully! ║${NC}"
echo -e "${BOLD}${GREEN}╚══════════════════════════════════════════════╝${NC}"
echo ""
