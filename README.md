# Homebrew Tap for RustBrother

This is a [Homebrew](https://brew.sh) tap for [RustBrother](https://github.com/MarkusAugust/RustBrother), a CLI tool that hunts down unused CSS in React components and detects complex patterns.

## Installation

```bash
# Add the tap
brew tap MarkusAugust/rustbrother

# Install RustBrother
brew install rustbrother
```

## Usage

```bash
# Analyze your React components for unused CSS
rustbrother --path ./src/components

# Generate detailed HTML report
rustbrother --path ./src --format html --output report.html --verbose
```

## About

RustBrother analyzes your React codebase to:

- 🧹 Find unused CSS classes and custom properties
- ⚠️ Detect complex patterns that harm maintainability
- 📦 Help reduce bundle size
- 🚀 Improve code maintainability

## Links

- [Main Repository](https://github.com/MarkusAugust/RustBrother)
- [Documentation](https://github.com/MarkusAugust/RustBrother#readme)
- [Issues](https://github.com/MarkusAugust/RustBrother/issues)

## Formula Updates

This tap is automatically updated when new versions of RustBrother are released via GitHub Actions.
