variable "aws_region" {
  description = "AWS region used for deployment."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for naming and tagging."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}
