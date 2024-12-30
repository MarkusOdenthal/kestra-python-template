#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to print status messages
print_status() {
    echo -e "${GREEN}[SETUP]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if Python 3.13 is installed
print_status "Checking Python version..."
if ! command -v python3.13 &> /dev/null; then
    print_error "Python 3.13 is required but not installed."
    exit 1
fi

# Install uv if not installed
if ! command -v uv &> /dev/null; then
    print_status "Installing uv package manager..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# Create and activate virtual environment using uv
print_status "Setting up uv..."
uv sync

# Create .env file if it doesn't exist
if [ ! -f ".env" ]; then
    print_status "Creating .env file..."
    cp .env.example .env
    print_status "Please update the .env file with your credentials"
fi

print_status "Setup completed successfully! 🎉"
print_status "Next steps:"
print_status "1. Update the .env file with your credentials"
print_status "2. Run 'docker run -d socialmedia-agent' to start the container" 