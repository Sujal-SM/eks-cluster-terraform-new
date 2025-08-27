# AWS EKS Cluster with Terraform

This repository contains Terraform configuration files to provision an **Amazon Elastic Kubernetes Service (EKS) Cluster** on AWS.

---

## 📂 Project Structure

- **eks.tf** – Defines the EKS cluster and associated resources.
- **vpc.tf** – Creates the VPC, subnets, and networking components for the cluster.
- **provider.tf** – Configures the AWS provider.
- **locals.tf** – Stores local variables for the project.
- **terraform.tf** – Holds the Terraform backend and basic setup.
- **.gitignore** – Ignores sensitive and unnecessary files from version control.

---

## ✅ Prerequisites

Before using this project, ensure you have:

- **Terraform** v1.3+ installed  
- **AWS CLI** configured with proper credentials  
- **kubectl** installed for Kubernetes management  

---


