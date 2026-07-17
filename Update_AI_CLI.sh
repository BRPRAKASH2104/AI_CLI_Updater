#!/usr/bin/env bash
set -e # Exit immediately if a command exits with a non-zero status.

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

# Update Node.js via NVM
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[1/10]${NC} ${BOLD}Updating Node.js via NVM...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

# 1. Load NVM into the script's subshell (with || true to prevent set -e from failing if NVM isn't present)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" || true

# 2. Install the latest version of Node.js and make it default
echo -e "Installing the latest version of Node.js..."
nvm install node
nvm alias default node
nvm use node

echo -e "${GREEN}✓ Node.js update completed (Using $(node -v))${NC}"
echo ""

# Update NPM
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[2/10]${NC} ${BOLD}Updating NPM...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g npm@latest
echo -e "${GREEN}✓ NPM update completed${NC}"
echo ""

# Update Claude CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[3/10]${NC} ${BOLD}Updating Claude CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @anthropic-ai/claude-code@latest --allow-scripts=@anthropic-ai/claude-code
# Alternative: claude update
echo -e "${GREEN}✓ Claude CLI update completed${NC}"
echo ""

# Update GitHub Copilot CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[4/10]${NC} ${BOLD}Updating GitHub Copilot CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @github/copilot@latest
# Alternative: gh extension upgrade gh-copilot
echo -e "${GREEN}✓ GitHub Copilot CLI update completed${NC}"
echo ""

# Update Codex CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[5/10]${NC} ${BOLD}Updating Codex CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @openai/codex@latest
# Alternative: brew upgrade codex
echo -e "${GREEN}✓ Codex CLI update completed${NC}"
echo ""

# Update Gemini CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[6/10]${NC} ${BOLD}Updating Gemini CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @google/gemini-cli@latest --allow-scripts=@github/keytar,node-pty
echo -e "${GREEN}✓ Gemini CLI update completed${NC}"
echo ""

# Update Homebrew
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[7/10]${NC} ${BOLD}Updating Homebrew...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
brew update
echo -e "${GREEN}✓ Homebrew update completed${NC}"
echo ""

# Update Mole
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[8/10]${NC} ${BOLD}Updating Mole...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
mole update
echo -e "${GREEN}✓ Mole update completed${NC}"
echo ""

# Update GitNexus
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[9/10]${NC} ${BOLD}Updating GitNexus...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g gitnexus --loglevel=error --allow-scripts=gitnexus,@ladybugdb/core,@scarf/scarf,tree-sitter,tree-sitter-c-sharp,tree-sitter-cpp,tree-sitter-go,tree-sitter-java,tree-sitter-javascript,tree-sitter-php,tree-sitter-python,tree-sitter-ruby,tree-sitter-rust,tree-sitter-typescript
export GITNEXUS_MAX_FILE_SIZE=2048
echo -e "${GREEN}✓ GitNexus update completed${NC}"
echo ""

# Update Graphify
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[10/10]${NC} ${BOLD}Updating Graphify...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
pip3 install --upgrade graphifyy
echo -e "${GREEN}✓ Graphify update completed${NC}"
echo ""

# Update Project
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[****]${NC} ${BOLD}Updating project...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
cd /Users/ramprakash/Documents/GitHub/AI_TC_Generator_v04_w_Trainer
pwd
gitnexus clean --force
gitnexus analyze --force --skills
graphify install --project
graphify update
echo -e "${GREEN}✓ Project update completed${NC}"
echo ""

# Completion message
echo -e "${BOLD}${GREEN}╔══════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}${GREEN}║  ✓ All AI CLI updates completed successfully! ║${NC}"
echo -e "${BOLD}${GREEN}╚══════════════════════════════════════════════╝${NC}"
echo ""
