FROM ghcr.io/astral-sh/uv:latest
WORKDIR /app
ENV WARP_LOG_LEVEL=info
ENV WARP_ACCESS_LOG=true
ENV OPENAI_LOG_LEVEL=info
ENV OPENAI_ACCESS_LOG=true
COPY pyproject.toml uv.lock ./
COPY . .
uv run ./start.py