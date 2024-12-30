# Kestra Python Template

A Python-based template for Kestra workflows.

## Prerequisites

- Python 3.13
- Docker
- Git

## Quick Start

1. Clone this repository:
   ```bash
   git clone https://github.com/MarkusOdenthal/socialmedia-agent.git
   cd socialmedia-agent
   ```

2. Run the setup script:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```
   This will:
   - Install uv (if not already installed)
   - Install dependencies from pyproject.toml
   - Create an .env file from template

3. Configure your environment:
   - Update the `.env` file with your credentials and configuration

## Project Structure

- `docker/` - Docker configuration files
- `src/` - Main application code
- `kestra_workflows/` - Kestra workflow definitions
- `.env` - Environment configuration (create from .env.example)
- `pyproject.toml` - Python project dependencies and metadata

## Development

The project uses:
- uv for dependency and virtual environment management
- Python 3.13
- Docker for containerization
- Kestra for workflow automation
