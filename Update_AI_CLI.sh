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
echo -e "${BOLD}${CYAN}║     AI CLI Updater - Starting Process...     ║${NC}"
echo -e "${BOLD}${CYAN}╚══════════════════════════════════════════════╝${NC}"
echo ""

# Update Node.js via NVM
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[1/10]${NC} ${BOLD}Updating Node.js via NVM...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

# Load NVM into the script's subshell
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" || true

# Install the latest version of Node.js and make it default
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
echo -e "${GREEN}✓ Claude CLI update completed${NC}"
echo ""

# Update GitHub Copilot CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[4/10]${NC} ${BOLD}Updating GitHub Copilot CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @github/copilot@latest
echo -e "${GREEN}✓ GitHub Copilot CLI update completed${NC}"
echo ""

# Update Codex CLI
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[5/10]${NC} ${BOLD}Updating Codex CLI...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g @openai/codex@latest
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
if command -v brew &> /dev/null; then
    brew update && brew upgrade || true
    echo -e "${GREEN}✓ Homebrew update completed${NC}"
else
    echo -e "${YELLOW}! Homebrew not found, skipping...${NC}"
fi
echo ""

# Update Mole
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[8/10]${NC} ${BOLD}Updating Mole...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
if command -v mole &> /dev/null; then
    mole update || true
    echo -e "${GREEN}✓ Mole update completed${NC}"
else
    echo -e "${YELLOW}! Mole not found, skipping...${NC}"
fi
echo ""

# Update GitNexus
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[9/10]${NC} ${BOLD}Updating GitNexus...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
npm install -g gitnexus --loglevel=error --allow-scripts=gitnexus,@ladybugdb/core,@scarf/scarf,tree-sitter,tree-sitter-c-sharp,tree-sitter-cpp,tree-sitter-go,tree-sitter-java,tree-sitter-javascript,tree-sitter-php,tree-sitter-python,tree-sitter-ruby,tree-sitter-rust,tree-sitter-typescript

# Safely refresh symlink directly from the current Node active bin directory
NODE_BIN="$(dirname "$(which node)")"
mkdir -p "$HOME/.local/bin"
ln -sf "$NODE_BIN/gitnexus" "$HOME/.local/bin/gitnexus"

echo -e "${GREEN}✓ GitNexus update and symlink refreshed (${HOME}/.local/bin/gitnexus -> ${NODE_BIN}/gitnexus)${NC}"
echo ""

# Update Graphify
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[10/10]${NC} ${BOLD}Updating Graphify...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
if command -v uv &> /dev/null; then
    uv tool install graphify --upgrade || uv tool install graphifyy --upgrade || true
    graphify install --platform claude || true
    graphify install --platform codex || true
    echo -e "${GREEN}✓ Graphify update completed${NC}"
else
    echo -e "${YELLOW}! 'uv' tool manager not found, skipping Graphify update...${NC}"
fi
echo ""

# Update Project
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}[****]${NC} ${BOLD}Updating project...${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
PROJECT_DIR="$HOME/Documents/GitHub/AI_TC_Generator_v04_w_Trainer"

if [ -d "$PROJECT_DIR" ]; then
    cd "$PROJECT_DIR"
    pwd
    gitnexus clean --force
    gitnexus analyze --force --skills
    graphify install --project || true
    graphify install --project --platform claude || true
    graphify install --project --platform codex || true
    graphify update || true
    echo -e "${GREEN}✓ Project update completed${NC}"
else
    echo -e "${RED}✗ Directory $PROJECT_DIR does not exist! Skipping project step.${NC}"
fi
echo ""

# Completion message
echo -e "${BOLD}${GREEN}╔══════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}${GREEN}║  ✓ All AI CLI updates completed successfully! ║${NC}"
echo -e "${BOLD}${GREEN}╚══════════════════════════════════════════════╝${NC}"
echo ""
