resource "aws_codedeploy_app" "this" {
  name = var.application_name
}

resource "aws_codedeploy_deployment_group" "this" {
  app_name              = aws_codedeploy_app.this.name
  deployment_group_name = var.deployment_group_name
  #IF USING EXISTING ROLE
  service_role_arn      = var.service_role_arn

  deployment_config_name = "CodeDeployDefault.AllAtOnce"

  dynamic "ec2_tag_set" {
    for_each = var.tags
    content {
      ec2_tag_filter {
        key   = ec2_tag_set.key
        value = ec2_tag_set.value
        type  = "KEY_AND_VALUE"
      }
    }
  }

  auto_rollback_configuration {
    enabled = true
    events  = ["DEPLOYMENT_FAILURE"]
  }

  alarm_configuration {
    alarms = var.alarms
  }
}