# Kubernetes & Docker Web Application Demo

## Project Overview
This project demonstrates a cloud-native workflow for deploying a static web application. It showcases the ability to containerize an application using **Docker** and define Infrastructure-as-Code (IaC) using **Kubernetes (K8s)** manifests.

## Technical Stack
* **Containerization:** Docker (Nginx Alpine image)
* **Orchestration:** Kubernetes (Pods, Deployments, Services)
* **Configuration:** YAML (Declarative Syntax)

## Infrastructure Breakdown

### 1. Dockerfile
* Built a lightweight image using `nginx:alpine` to minimize attack surface and size.
* Exposes Port 80 for standard web traffic.

### 2. Kubernetes Deployment (`deployment.yaml`)
* **Kind:** Deployment
* **Replicas:** 3 (Ensures High Availability; if one Pod crashes, K8s restarts it).
* **Strategy:** Rolling Updates (Allows zero-downtime deployments).

### 3. Kubernetes Service (`service.yaml`)
* **Kind:** Service
* **Type:** LoadBalancer
* **Function:** Acts as a stable network endpoint to distribute traffic across the 3 backend Pods.
