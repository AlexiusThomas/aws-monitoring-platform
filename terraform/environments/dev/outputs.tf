output "vpc_id" {
  description = "ID of the monitoring VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet."
  value       = aws_subnet.public.id
}

output "instance_id" {
  description = "ID of the EC2 monitoring server."
  value       = aws_instance.monitoring_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 monitoring server."
  value       = aws_instance.monitoring_server.public_ip
}

output "website_url" {
  description = "Public URL for the NGINX monitoring test page."
  value       = "http://${aws_instance.monitoring_server.public_ip}"
}

output "sns_topic_arn" {
  description = "ARN of the SNS alert topic."
  value       = aws_sns_topic.alerts.arn
}

output "cloudwatch_dashboard_name" {
  description = "Name of the CloudWatch dashboard."
  value       = aws_cloudwatch_dashboard.main.dashboard_name
}