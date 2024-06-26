output "application_id" {
  value = aws_codedeploy_app.this.id
}

output "deployment_group_id" {
  value = aws_codedeploy_deployment_group.this.id
}
