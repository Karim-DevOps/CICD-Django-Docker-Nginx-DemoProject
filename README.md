# Ultimate Polling Web App
## Demo Project

## Overview
This project sets up a polling web application using Docker with the following components:
- **PostgreSQL**: Database container
- **Python 3.10**: Django application container
- **Nginx**: Web host container
- **Jenkins**: CI/CD pipeline for continuous integration and deployment

## Project Structure
- **docker-compose.yml**: Defines and runs multi-container Docker applications.
- **Dockerfile**: Specifies the environment for Django.
- **nginx.conf**: Configuration file for Nginx.
- **Jenkinsfile**: Defines the CI/CD pipeline.

## Prerequisites
- Docker.
- Docker Compose.
- Ubuntu Server. 
- Jenkins Server "Optional".

## Setup

### manual deployment
1. **Clone the repository:**
   ```bash
   git clone https://github.com/Karim-DevOps/CICD-Django-Docker-Nginx-DemoProject.git
   cd CICD-Django-Docker-Nginx-DemoProject
   ```

2. **Build and run the containers:**
   ```bash
   docker-compose up --build
   ```

3. **Then create a superuser that will be used to log into the admin area**
- **Log into `docker-app` container:**
  ```bash
  docker exec -it docker-app bash
  ```
- **Execute next command to create the `admin user`:**
  ```bash
  python3 manage.py createsuperuser 
  ```

4. **Access**
- **Access to the application**
   Open your browser and navigate to `http://localhost`.

- **Access to admin area**
   Open your browser and navigate to `http://localhost/admin`

### With jenkins 

Add the `repository_url` to your Jenkins Server and `Build Now` 😀

## Configuration
- **Global Configuration** `docker-compose.yml`
- **PostgreSQL**: Configuration in `bd` directory.
- **Django**: Configured with `Dockerfile` in `app` directory.
- **Nginx**: Configured with `polling.conf` in `web` directory.
- **Jenkins**: CI/CD pipeline defined in `Jenkinsfile`.

## CI/CD Pipeline
- Use `agent any` instead of `agent { label 'staging' }` in Jenkinsfile if you don't have a remote node.

## We welcome feedback
Feel free to submit issues or leave comments or ask questions about the project.

