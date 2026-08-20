# AWS Cloud Monitoring & Observability Platform

[![Terraform](https://img.shields.io/badge/IaC-Terraform-7B42BC?logo=terraform)](https://developer.hashicorp.com/terraform)
[![AWS](https://img.shields.io/badge/Cloud-AWS-232F3E?logo=amazonaws)](https://aws.amazon.com/)
[![CI](https://github.com/OWNER/REPOSITORY/actions/workflows/terraform.yml/badge.svg)](https://github.com/OWNER/REPOSITORY/actions/workflows/terraform.yml)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Overview

This project demonstrates how AWS infrastructure can be provisioned, monitored, and operated using Infrastructure as Code and automated observability.

### Problem

Cloud infrastructure requires proactive monitoring so operational issues can be detected before they significantly affect availability. Manually deploying infrastructure and checking resources individually also creates operational overhead and increases the possibility of configuration errors.

### Solution

I built a reusable AWS monitoring platform using **Terraform, Amazon CloudWatch, Amazon SNS, AWS IAM, and GitHub Actions**.

Terraform provides repeatable infrastructure deployment, while CloudWatch dashboards and alarms provide visibility into infrastructure health. Amazon SNS provides automated operational notifications when monitored conditions cross configured thresholds. GitHub Actions provides automated validation of Terraform changes.

The project demonstrates:

- Infrastructure as Code with Terraform
- AWS monitoring and observability
- Automated alerting
- Infrastructure health visibility
- CI/CD-based Terraform validation
- IAM-based access control
- Repeatable deployment and cleanup
- Operational troubleshooting practices

## Architecture

```text
                    GitHub
                       |
                GitHub Actions
                       |
                Terraform Validate
                       |
                       v
                  AWS Account
                       |
              Terraform Deployment
                       |
          +------------+------------+
          |                         |
          v                         v
    AWS Infrastructure        Amazon CloudWatch
                                    |
                             Metrics / Dashboard
                                    |
                             CloudWatch Alarm
                                    |
                                    v
                                Amazon SNS
                                    |
                                    v
                           Operational Alert
```



![Architecture Diagram](architecture/architecture-diagram.png)

## Key Features

### Infrastructure as Code

AWS resources are defined through Terraform, allowing the environment to be deployed consistently rather than configured manually.

### Automated Infrastructure Validation

GitHub Actions validates Terraform changes before deployment using formatting and configuration checks.

Typical validation includes:

```bash
terraform fmt -check -recursive
terraform validate
```

### Centralized Monitoring

Amazon CloudWatch provides centralized visibility into infrastructure metrics and system health.

### Proactive Alerting

CloudWatch alarms monitor configured thresholds. When an alarm enters an alert state, Amazon SNS can notify the operator so the issue can be investigated.

### Repeatable Deployment

The environment can be created, modified, and removed through Terraform, reducing manual configuration and improving consistency.

## AWS Services

| Service | Purpose |
|--------|---------|
| Amazon VPC | Provides network isolation and routing for deployed resources |
| AWS IAM | Controls permissions used by infrastructure and monitoring components |
| Amazon CloudWatch | Provides metrics, dashboards, monitoring, and alarms |
| Amazon SNS | Delivers notifications when monitored conditions trigger alarms |

## Technology Stack

- Amazon Web Services
- Terraform
- GitHub Actions
- Git
- Linux

## Repository Structure

```text
.
├── .github/
│   └── workflows/
├── architecture/
├── docs/
├── images/
├── scripts/
├── terraform/
│   ├── environments/
│   │   └── dev/
│   └── modules/
├── .gitignore
├── CHANGELOG.md
├── CONTRIBUTING.md
├── LICENSE
├── Makefile
├── README.md
└── SECURITY.md
```

## Deployment

### 1. Clone the repository

```bash
git clone https://github.com/AlexiusThomas/aws-monitoring-platform.git
cd aws-monitoring-platform
```

### 2. Configure AWS credentials

```bash
aws sts get-caller-identity
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Validate

```bash
terraform fmt -check -recursive
terraform validate
```

### 5. Review Changes

```bash
terraform plan
```

### 6. Deploy

```bash
terraform apply
```

## Operational Validation

- Terraform completed successfully
- AWS resources created as expected
- CloudWatch metrics are visible
- Dashboard displays system health
- Alarms are active and correctly configured
- SNS notifications are working
- GitHub Actions validation passes

Useful commands:

```bash
terraform output
terraform state list
aws cloudwatch describe-alarms
aws sns list-topics
```

## Failure Scenario and Operational Response

### Example: Resource Utilization Exceeds Threshold

**1. Detect** – CloudWatch monitors metrics  
**2. Alert** – Alarm triggers SNS notification  
**3. Investigate** – Review metrics and logs  
**4. Remediate** – Fix configuration or scale resources  
**5. Verify** – Confirm system returns to normal  

This demonstrates the SRE workflow:

**Detect → Investigate → Remediate → Verify**

## Security Considerations

- Use least privilege IAM policies
- Never commit AWS credentials
- Review Terraform plans before apply
- Restrict network access where possible
- Enable monitoring for all critical resources

## Cost Considerations

- Use only required resources
- Prefer small development instances
- Destroy infrastructure after testing
- Monitor AWS billing dashboard

```bash
terraform destroy
```

## Lessons Learned

- Infrastructure as Code improves consistency
- Monitoring must be tied to actionable alerts
- Automation reduces operational overhead
- IAM design is critical from the start
- Deployment is not complete without observability

## Reliability & Scaling

Future improvements:

- Multi-AZ architecture
- Auto Scaling groups
- Centralized logging (CloudWatch Logs / OpenSearch)
- Automated remediation
- Separate environments (dev/staging/prod)
- Terraform remote state + locking
- Policy-as-code validation

## What This Project Demonstrates

**Build → Automate → Monitor → Detect → Investigate → Remediate → Verify**

This project demonstrates an operational engineering mindset focused on reliability and observability.

## Documentation

- [Architecture Notes](docs/architecture.md)
- [Deployment Guide](docs/deployment.md)
- [Troubleshooting Guide](docs/troubleshooting.md)

## Author

**Alexius Thomas**

- GitHub: AlexiusThomas
- LinkedIn: Alexius Victoria

## License

This project is licensed under the MIT License.

