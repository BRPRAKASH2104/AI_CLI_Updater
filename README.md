# AI CLI Updater Scripts

A simple and effective collection of scripts to automate the updating of common AI command-line interfaces (CLIs) on both macOS and Windows.

## 📖 About This Project

As AI development tools become more prevalent, keeping their command-line interfaces updated is crucial for accessing new features and security patches. This repository provides a straightforward, "fire-and-forget" solution to update multiple AI CLIs with a single command, saving you time and effort.

The scripts are designed to be easily customizable to fit your specific set of installed tools.

## ✨ Features

-   **Cross-Platform:** Separate, tailored scripts for both macOS (`.sh`) and Windows (`.bat`).
-   **One-Command Updates:** Update all your essential AI CLIs at once.
-   **Easy to Customize:** Add or remove CLI update commands by editing the script files.

### Supported CLIs (by default)

The scripts currently update the following CLIs:
-   **Claude CLI** (`@anthropic-ai/claude-code`)
-   **GitHub Copilot CLI** (`@github/copilot`)
-   **Codex CLI** (`@openai/codex`)
-   **Google CLI** (`gcloud`)

## ⚙️ Prerequisites

Before you can use these scripts, you need to have the necessary package managers and the CLIs themselves installed on your system.

-   **Git:** Required to clone this repository. You can download it from [git-scm.com](https://git-scm.com/).
-   **Node.js and npm:** Most of the CLIs are managed via `npm` (Node Package Manager), which is included with Node.js. You can get it from [nodejs.org](https://nodejs.org/).
-   **Google Cloud SDK:** The Google CLI (`gcloud`) has its own installer and updater. Make sure it's installed and configured in your system's PATH. You can find it [here](https://cloud.google.com/sdk/docs/install).

## 🚀 Getting Started

To get a local copy of the scripts up and running, follow these simple steps.

### Installation

1.  Open your terminal (on macOS) or Command Prompt/Git Bash (on Windows).
2.  Navigate to a directory where you want to store the scripts.
3.  Clone the repository:
    ```sh
    git clone https://github.com/YOUR_USERNAME/ai-cli-updater.git
    ```
    (Replace `YOUR_USERNAME` with your actual GitHub username.)
4.  Navigate into the newly created directory:
    ```sh
    cd ai-cli-updater
    ```

## 💻 Usage

Once you have the repository cloned, you can run the appropriate script for your operating system.

### On macOS

1.  **Make the script executable:** You only need to do this once. In your terminal, run:
    ```sh
    chmod +x update_ai_clis.sh
    ```
2.  **Run the script:**
    ```sh
    ./update_ai_clis.sh
    ```

### On Windows

1.  **Run the batch file:** You can either double-click the `update_ai_clis.bat` file in your file explorer or run it directly from your Command Prompt:
    ```bat
    update_ai_clis.bat
    ```

The script will then proceed to update each CLI sequentially, printing its progress to the console.

## 🔧 Customization

These scripts are designed to be a starting point. Feel free to modify them to suit your needs!

For example, if you installed a CLI using a different package manager like **Homebrew** on macOS, you would need to edit the `update_ai_clis.sh` file.

**Example: Changing from `npm` to `Homebrew` for the Codex CLI:**

```sh
# OLD command
# npm install -g @openai/codex@latest

# NEW command
brew upgrade codex