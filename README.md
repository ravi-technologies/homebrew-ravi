# Homebrew Tap for Ravi CLI

This is the official Homebrew tap for [Ravi](https://github.com/ravi-technologies/ravi), an AI-powered code review CLI.

## Installation

```bash
brew tap ravi-technologies/ravi
brew install ravi
```

Or install directly:

```bash
brew install ravi-technologies/ravi/ravi
```

## Usage

```bash
export OPENAI_API_KEY="your-api-key"
ravi review              # Review latest commit
ravi review --staged     # Review staged changes
ravi --help              # See all options
```

## Updates

```bash
brew update
brew upgrade ravi
```
