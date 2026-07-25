# Deployment Guide

## Requirements

- AWS CLI
- Terraform
- Git
- AWS credentials with appropriate permissions

## Deployment Steps

1. Configure AWS credentials.
2. Copy the example variable file.
3. Run `terraform init`.
4. Run `terraform plan`.
5. Run `terraform apply`.

## Post-Deployment Checks

Add commands or URLs used to validate the deployment.

## Cleanup

Run:

```bash
terraform destroy
```
