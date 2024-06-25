provider "aws" {
  region = var.region
}

resource "aws_iam_role" "codedeploy_service_role" {
  name = var.service_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "codedeploy.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy" "codedeploy_service_role_policy" {
  role = aws_iam_role.codedeploy_service_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:Describe*",
          "elasticloadbalancing:Describe*",
          "autoscaling:Describe*",
          "cloudwatch:PutMetricData",
          "s3:Get*",
          "s3:List*"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_codedeploy_app" "qrpush" {
  name = var.application_name
}

resource "aws_codedeploy_deployment_group" "qrpush" {
  app_name              = aws_codedeploy_app.qrpush.name
  deployment_group_name = var.deployment_group_name
  #IF USING EXISTING ROLE
  #service_role_arn      = var.service_role_arn
  service_role_arn      = aws_iam_role.codedeploy_service_role.arn

  deployment_config_name = "CodeDeployDefault.AllAtOnce"

  ec2_tag_set {
    ec2_tag_filter {
      key   = var.ec2_tag_key
      value = var.ec2_tag_value
      type  = "KEY_AND_VALUE"
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