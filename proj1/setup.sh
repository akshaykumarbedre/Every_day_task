#!/bin/bash

# MCP Tool Setup Script for proj1

echo "🚀 Setting up MCP Tool for Document Loading"
echo "==========================================="

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8+ first."
    exit 1
fi

echo "✅ Python found: $(python3 --version)"

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "🔄 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "⬆️ Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "📥 Installing Python dependencies..."
pip install -r requirements.txt

echo "✅ Setup completed successfully!"
echo ""
echo "🎯 Next steps:"
echo "1. Activate virtual environment: source venv/bin/activate"
echo "2. Run the MCP tool: python mcp_tool.py --url 'https://docs.python.org/3.9/' --query 'file operations'"
echo ""
echo "🔧 Available commands:"
echo "- Basic usage: python mcp_tool.py --url <URL> --query <QUERY>"
echo "- Show statistics: python mcp_tool.py --url <URL> --stats"
echo "- Adjust search parameters: python mcp_tool.py --url <URL> --query <QUERY> --results 10 --search-type mmr"
echo ""
echo "Happy documenting! 📚"