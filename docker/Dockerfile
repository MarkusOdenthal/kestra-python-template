# Base image
FROM python:3.12-slim

LABEL org.opencontainers.image.source=https://github.com/MarkusOdenthal/kestra-python-template
LABEL org.opencontainers.image.description="Custom Python image for Kestra workflows with project dependencies"

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /usr/local/bin/uv

# Set environment variables for uv
ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy
ENV UV_SYSTEM_PYTHON=1

# Set working directory
WORKDIR /app

# Copy dependency files
COPY pyproject.toml uv.lock ./

# Install dependencies using uv
RUN uv pip install --upgrade pip && \
    uv pip install -e .
