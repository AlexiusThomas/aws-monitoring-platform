# Troubleshooting Guide

## Terraform Initialization Errors

Confirm network access and provider configuration.

## Authentication Errors

Run:

```bash
aws sts get-caller-identity
```

## Permission Errors

Review IAM policies and CloudTrail events.

## Resource Creation Failures

Check:

- AWS service quotas
- Region availability
- Naming conflicts
- Dependency order
- Terraform state
