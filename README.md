# Solid CI/CD Project

A simple web app, containerized with Docker, scanned for vulnerabilities using Trivy, and pushed to Docker Hub via a GitHub Actions pipeline.

## What's Inside
- **index.html** – the web app
- **dockerfile** – to containerize the app
- **.github/workflows/devsecops.yml** – GitHub Actions pipeline that scans, builds, and pushes the Docker image

## Pipeline Steps
1. **Checkout Repository**
2. **Trivy Vulnerability Scan** – scans the codebase for `CRITICAL` and `HIGH` severity vulnerabilities
3. **Login to Docker Hub**
4. **Build & Push Docker Image** – tags and pushes the image as `latest` and with the commit SHA

## How to Use

Run locally with Docker:
```bash
docker build -t solid-ai-app .
docker run -p 8080:80 solid-ai-app
```

## GitHub Secrets Required
| Secret Name | Description |
|---|---|
| `DOCKERHUB_USERNAME` | Docker Hub username |
| `DOCKERHUB_TOKEN` | Docker Hub access token |

## Author
**Prerna** — [@bishtprerna17-netizen](https://github.com/bishtprerna17-netizen)
