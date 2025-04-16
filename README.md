# PetClinic Web Application
 
*A modern veterinary clinic management system*

## Project Overview

PetClinic Web is a comprehensive veterinary clinic management system built using Java Spring framework. This application helps veterinary clinics manage patient records, appointments, and clinic operations efficiently.

## Technology Stack

### Core Technologies
- **Backend**: Java Spring Boot (26.8%)
- **Frontend**: 
  - Thymeleaf templates (HTML 4.3%)
  - CSS (66.8%) with SCSS preprocessing (1.9%)
- **Containerization**: Docker (Dockerfile 0.2%)

### Build Tools
- Maven (`pom.xml`)
- Gradle (`build.gradle`)

### Infrastructure
- Docker Compose (`docker-compose.yml`)
- Kubernetes (`k8s/` directory)
- GitHub Actions (CI/CD pipelines in `.github/`)
- DevContainer configuration (`.devcontainer/`)

## Key Features

- **Patient Management**: Complete medical records for animals
- **Appointment Scheduling**: Calendar-based booking system
- **Veterinary Staff Portal**: Secure access for clinic personnel
- **Responsive UI**: Modern interface with SCSS styling
- **Containerized Deployment**: Ready for Docker and Kubernetes

## System Architecture
petclinic-web/
├── src/ # Main application source
│ ├── main/
│ │ ├── java/ # Spring Boot backend
│ │ ├── resources/ # Configuration files
│ │ └── webapp/ # Frontend resources
│ └── test/ # Unit tests
├── k8s/ # Kubernetes deployment files
├── .devcontainer/ # VSCode dev container config
├── .github/ # GitHub Actions workflows
└── docker-compose.yml # Local development setup

Copy

## Installation

### Prerequisites
- Java JDK 11+
- Docker Engine 20.10+
- Node.js (for SCSS compilation)

### Running with Docker
```bash
docker-compose up --build
Local Development
Build with Maven:

bash
Copy
mvn clean package
Run with Gradle:

bash
Copy
gradle bootRun
Kubernetes Deployment
bash
Copy
kubectl apply -f k8s/
Configuration
Configure your database settings in:

Copy
src/main/resources/application.properties
Screenshots
Patient Management
Patient records interface

Appointment Calendar
Interactive appointment scheduler

Contributing
This project uses both Maven and Gradle for compatibility:

Use mvn for dependency management

Use gradle for local development tasks

Please follow the Java coding standards in the repository.

License
Apache License 2.0

Support
For issues or questions, please open an issue on GitHub.

