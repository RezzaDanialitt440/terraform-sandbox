output "application_id" {
  value = aws_codedeploy_app.qrpush.id
}

output "deployment_group_id" {
  value = aws_codedeploy_deployment_group.qrpush.id
}

output "service_role_arn" {
  value = aws_iam_role.codedeploy_service_role.arn
}