variable "aws_region" {
  description = "AWS region used for deployment."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming and tagging."
  type        = string
  default     = "aws-monitoring-platform"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type used for the monitored server."
  type        = string
  default     = "t3.micro"
}

variable "alert_email" {
  description = "Email address that receives CloudWatch alarm notifications."
  type        = string
}