Infrastructure as Code (IaC) using Terraform on Azure
 Overview

This project demonstrates the implementation of Infrastructure as Code (IaC) using Terraform on Microsoft Azure. The goal is to automate the provisioning of core cloud resources such as networking, compute, storage, and database services.

The infrastructure is modular, reusable, and secure, with policy enforcement using OPA (Open Policy Agent). This ensures consistency, scalability, and compliance across deployments.

 Architecture

User → Public IP → Virtual Machine → Virtual Network → Subnet → Storage / Database

The user accesses the system via a Public IP

Traffic is routed to a Virtual Machine (VM)

The VM is deployed inside a Virtual Network (VNet) and Subnet

Storage and Database services support application data

 Modules Description
1. Network Module
Creates Resource Group
Creates Virtual Network (VNet)
Creates Subnet
Creates Route Table and associates it with subnet
2. Compute Module
Creates Virtual Machine (Linux)
Creates Network Interface (NIC)
Creates Public IP
Configures Network Security Group (NSG)
Allows SSH (port 22) and HTTP (port 80)
Installed ngnix to verify the public access of vm over internet
3. Storage Module
Creates Azure Storage Account
Configured with Standard performance and LRS replication
Enforces secure data transfer using HTTPS
4. Database Module
Creates Azure PostgreSQL Flexible Server
Configures admin credentials and version
Provides managed relational database service

Technologies Used
1. Terraform
2. Microsoft Azure
3. OPA (Open Policy Agent)
4. Git & GitHub

 How to Run
Step 1: Clone the repository

git clone https://github.com/Deekshithapotharaju/IAC-Project

cd IAC-Project

Step 2: Login to Azure

az login

Step 3: Initialize Terraform

terraform init

Step 4: Preview Infrastructure

terraform plan

Step 5: Deploy Infrastructure

terraform apply

 Policy Enforcement (OPA)

Policy-as-Code is implemented using OPA to ensure security compliance.

 Policy Rule

Storage accounts must enforce HTTPS-only traffic

 Policy Validation Steps

1. terraform plan -out=tfplan
2. terraform show -json tfplan > tfplan.json
3. opa eval --input tfplan.json --data policy/policy.rego "data.terraform.policy.deny"

 Violation Scenario

If HTTPS is disabled → Policy throws error

Valid Scenario

If HTTPS is enabled → No errors

 Outputs
Virtual Machine Public IP, Database Server Name, Storage Account Name,NIC, VNet and subnets are created, Route table is added.


 Key Features
1. Modular Terraform Architecture
2. Remote State Configuration (Azure Storage Backend)
3. Secure Infrastructure using NSG Rules
4. Policy-as-Code Integration (OPA)
5. Automated Cloud Resource Deployment

 Conclusion

This project demonstrates how Infrastructure as Code can be used to automate, manage, and secure cloud infrastructure efficiently. By combining Terraform with Azure and OPA, the solution ensures scalability, reproducibility, and compliance with best practices.