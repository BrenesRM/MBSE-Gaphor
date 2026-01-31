FROM ubuntu:24.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    python3 \
    python3-dev \
    python3-venv \
    python3-pip \
    libcairo2-dev \
    pkg-config \
    libgtk-4-dev \
    libgirepository-2.0-dev \
    libgtksourceview-5-dev \
    libadwaita-1-dev \
    dbus-x11 \
    adwaita-icon-theme-full \
    graphviz \
    xvfb \
    x11vnc \
    openbox \
    novnc \
    websockify \
    git \
    pipx \
    && rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /app

# Copy the local source
COPY gaphor /app/gaphor

# Install poetry
ENV PIP_TRUSTED_HOST="pypi.org pypi.python.org files.pythonhosted.org"
ENV PATH="/root/.local/bin:$PATH"
RUN pipx install poetry

# Create a virtual environment and install dependencies
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN cd /app/gaphor \
    && pip install . \
    --trusted-host pypi.org \
    --trusted-host files.pythonhosted.org \
    --trusted-host pypi.python.org

# Set up noVNC
RUN mkdir -p /usr/share/novnc \
    && ln -s /usr/share/novnc/vnc.html /usr/share/novnc/index.html

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose noVNC port
EXPOSE 6080

# Force software rendering for GTK4 to avoid input issues on Xvfb
ENV GDK_BACKEND=x11
ENV GSK_RENDERER=cairo

ENTRYPOINT ["/entrypoint.sh"]
