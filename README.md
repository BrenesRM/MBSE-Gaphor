# MBSE-Gaphor Docker Project

This project provides a containerized environment for running the Gaphor modeling tool using Docker. It includes a web-based interface (noVNC) for easy access.

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop) installed and running on your machine.

## Getting Started

1.  **Clone the Repository** (or ensure you have the project files):
    Ensure the `gaphor` directory (source code) is present in the project root.

2.  **Build and Run**:
    Open a terminal in the project directory and run:
    ```bash
    docker compose up -d --build
    ```
    This command builds the Docker image and starts the container in the background.

3.  **Access Gaphor**:
    Open your web browser and navigate to:
    [http://localhost:6080](http://localhost:6080)

    You should see the Gaphor interface running.

4.  **Stop the Container**:
    To stop the application, run:
    ```bash
    docker compose down
    ```

## Features & Configuration

### Persistent Storage
A local folder named `models` has been created in your project directory.
- **In Container**: This folder is mounted to `/root/models`.
- **Usage**: When saving files in Gaphor, save them to the `/root/models` directory.
- **Benefit**: Files saved here will appear in your local `models` folder and remain safe even if the container is deleted.

### Fixed Issues
- **Input Responsiveness**: The container is configured to use software rendering (`GSK_RENDERER=cairo`) to resolve mouse/keyboard input issues common in headless environments.
- **VNC Connection**: The internal ports are correctly configured (`websockify` -> port 5900) to ensure a stable connection.
- **Dependencies**: Includes necessary system libraries (`dbus-x11`, `adwaita-icon-theme-full`) for a smooth GTK4 experience.

## Troubleshooting

- **"Connection Refused"**: Ensure the container is running with `docker compose ps`. If it keeps restarting, check logs with `docker logs mbse-gaphor-gaphor-1`.
- **Input Lag/No Response**: Confirm the environment variables `GDK_BACKEND=x11` and `GSK_RENDERER=cairo` are set in the `Dockerfile`.
