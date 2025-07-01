# GitHub Actions CI Pipeline with Docker + Trivy

This project demonstrates a secure and automated CI pipeline using GitHub Actions. On every push to the `main` branch, the workflow builds a Docker image, scans it for vulnerabilities using Trivy, and runs a placeholder test step.

---

## 🔧 Technologies Used

- **GitHub Actions** – Automates the CI workflow
- **Docker** – Builds a lightweight Python container
- **Trivy** – Performs vulnerability scans on the image
- **YAML** – Defines the CI workflow in `.github/workflows/ci.yml`

---

## 📁 Project Structure


---

## 🔄 CI Workflow Details

The CI pipeline performs the following steps:

1. Checks out the repo
2. Sets up Docker Buildx
3. Builds a Docker image from the included `Dockerfile`
4. Scans the image using Trivy (exit-code `0` to avoid job fail for now)
5. Runs a placeholder test

**Workflow Trigger:** On every push to the `main` branch.

---

## 🐳 Dockerfile

```Dockerfile
FROM python:3.9-slim

WORKDIR /app
COPY . /app

CMD ["python3", "-c", "print('Hello from container!')"]
