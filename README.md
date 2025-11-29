# Terraform AWS Infrastructure – Clean & Production-Style Setup

This repository contains a clean, modular, and production-style Terraform configuration for deploying AWS cloud infrastructure.  
The goal of this project is to demonstrate real-world Terraform practices including VPC design, networking, EC2 provisioning, RDS setup, and reusable variable/outputs structure.

---

## 🚀 Project Overview

This Terraform project provisions a complete AWS environment with the following components:

### **1. Networking (VPC & Subnets)**
- Custom VPC  
- Public & Private Subnets  
- Internet Gateway  
- Route Tables  
- NAT Gateway (optional or can be enabled as needed)

### **2. Security**
- Security Groups for:
  - EC2 Instances  
  - RDS Database  
  - Application ports (SSH, HTTP, HTTPS)

### **3. Compute**
- EC2 instance in public subnet  
- Key pair usage (defined via variables)

### **4. Database**
- RDS MySQL/PostgreSQL (configurable)  
- Private subnet placement  
- Security group-controlled access  

### **5. Variables & Outputs**
- All AWS resources parameterized using `variables.tf`  
- Clean output definitions inside `outputs.tf`  
- Used for automation & modularity

---

## 📁 Repository Structure

```
terraform-practice-clean/
│
├── main.tf              # Root module entry point
├── provider.tf          # AWS provider setup
├── variables.tf         # Input variables
├── outputs.tf           # Resource outputs
│
├── vpc.tf               # VPC + IGW + RTs + associations
├── subnets.tf           # Public & private subnets
└── sg.tf                # EC2 security groups
│
├── ec2.tf               # EC2 instance definition
│
├── rds.tf               # RDS instance
├── rds-subnet.tf        # DB subnet group
└── rds-sg.tf            # Security group for DB
│
├── data.tf              # Data sources (AMI lookups etc.)
└── locals.tf            # Helpful local variables
```

---

## 🧩 How It Works (High-Level Flow)

1. **Terraform initializes** the AWS provider.  
2. **VPC + Subnets** are created first.  
3. **Route tables + IGW** establish network routing.  
4. **Security groups** are created next.  
5. **EC2** is launched in public subnet.  
6. **RDS DB** is created in private subnets.  
7. **Outputs** expose instance IP, DB endpoint, VPC IDs etc.

---

## ▶️ Usage Instructions

### **1. Initialize Terraform**
```bash
terraform init
```

### **2. Validate configuration**
```bash
terraform validate
```

### **3. Plan infrastructure changes**
```bash
terraform plan
```

### **4. Deploy infrastructure**
```bash
terraform apply -auto-approve
```

### **5. Destroy infrastructure**
```bash
terraform destroy -auto-approve
```

---

## 🏗️ Real-World Practices Used

✔ Clean file separation  
✔ Use of variables & locals  
✔ Reusable structure  
✔ Proper networking  
✔ Secure DB deployment  
✔ Output management  
✔ AWS best practices (public EC2, private RDS)

---

## 📌 Why This Repo Is Employer-Friendly?

- Shows **real-world Terraform skills**, not basic hello-world code.  
- Displays knowledge of **networking, compute, and DB provisioning**.  
- Follows a **clean structure** used in professional cloud teams.  
- Easy to extend into a **modular setup** or CI/CD automation.  

---

## ✨ Future Enhancements (Optional)

- Convert to full **module-based architecture**  
- Add **NAT Gateway** for private subnets  
- Add **Load Balancer + Auto Scaling**  
- Add **S3 backend with remote state**  
- Add **CI/CD pipeline for Terraform**  

---

## 👤 Author
**Ramkumar Baghel**  
Cloud & DevOps Engineer | AWS | Terraform | Kubernetes

