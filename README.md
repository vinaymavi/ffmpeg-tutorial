# FFmpeg Docker Setup

This repository contains a Docker setup for practicing FFmpeg commands.

## Prerequisites

- Docker
- Docker Compose

## Structure

- `Dockerfile`: Defines the Docker image with FFmpeg pre-installed.
- `docker-compose.yml`: Defines the Docker service for running FFmpeg commands.
- `./scripts`: Directory for placing scripts to be run inside the Docker container.
- `./data`: Directory for placing data to be processed by the scripts.

## Usage

1. Place your scripts in the `./scripts` directory.
2. Place your data in the `./data` directory.
3. Build the Docker image and start the service:



## How to runt 

```bash
docker compose run ffmpeg /bin//bash
```

**Check the FFmpeg version:**

```bash
ffmpeg -version
```