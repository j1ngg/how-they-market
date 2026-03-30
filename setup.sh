#!/bin/bash
#
# how-they-market setup script
# Installs dependencies for the research collection script
#

set -e

echo "=================================="
echo "how-they-market setup"
echo "=================================="
echo ""

# Check Python
echo "Checking Python..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version)
    echo "✓ $PYTHON_VERSION"
else
    echo "✗ Python 3 not found. Please install Python 3.8 or later."
    exit 1
fi

# Check pip
echo ""
echo "Checking pip..."
if command -v pip3 &> /dev/null; then
    echo "✓ pip3 found"
else
    echo "✗ pip3 not found. Please install pip."
    exit 1
fi

# Install Python dependencies
echo ""
echo "Installing Python dependencies..."
pip3 install -r scripts/requirements.txt

# Verify yt-dlp
echo ""
echo "Verifying yt-dlp installation..."
if command -v yt-dlp &> /dev/null; then
    YTDLP_VERSION=$(yt-dlp --version)
    echo "✓ yt-dlp $YTDLP_VERSION"
else
    echo "⚠ yt-dlp not in PATH. Trying to install globally..."
    pip3 install --user yt-dlp
    echo "  You may need to add ~/.local/bin to your PATH"
fi

# Create output directory
echo ""
echo "Creating output directory..."
mkdir -p output
echo "✓ output/ created"

# Test the research script
echo ""
echo "Testing research script..."
if python3 scripts/research.py --help &> /dev/null; then
    echo "✓ Research script works"
else
    echo "✗ Research script failed. Check the error above."
    exit 1
fi

echo ""
echo "=================================="
echo "Setup complete!"
echo "=================================="
echo ""
echo "To use how-they-market:"
echo "  1. Run Claude Code in this directory: claude"
echo "  2. Ask: 'Analyze how [company/person] markets'"
echo ""
echo "Or run the collection script directly:"
echo "  python3 scripts/research.py 'company name'"
echo ""
echo "Data sources (all free, no API keys required):"
echo "  • Hacker News (Algolia API)"
echo "  • YouTube (yt-dlp)"
echo "  • Social Blade (public scraping)"
echo "  • Web search (DuckDuckGo)"
echo ""
