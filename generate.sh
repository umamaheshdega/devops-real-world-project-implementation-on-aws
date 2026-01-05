#!/bin/bash

# Cross-platform wrapper for generate_sidebar.py
# Works on macOS, Linux, and Windows (Git Bash)

echo "🚀 Generating Docsify sidebar..."
echo ""

# Try python3 first (macOS, modern Linux)
if command -v python3 &> /dev/null; then
    python3 generate_sidebar.py
    exit $?
fi

# Fall back to python (older Linux, Windows)
if command -v python &> /dev/null; then
    python generate_sidebar.py
    exit $?
fi

# If neither works, show helpful error
echo "❌ Error: Python not found!"
echo ""
echo "Please install Python 3.11 or higher:"
echo "  - macOS: brew install python3"
echo "  - Ubuntu/Debian: sudo apt install python3"
echo "  - Windows: Download from python.org"
echo ""
exit 1
