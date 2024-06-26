module "deployment-role" {
  source = "../../modules/code_deploy/deployment_role"
  service_role_name = "QrPush-CodeDeployServiceRole"
}

module "qr-cbsi-proxy-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-cbsi-proxy"
  deployment_group_name = "qrpush-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-fees-and-charges-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-fees-and-charges"
  deployment_group_name = "qr-fees-and-charges-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-kafka-logger-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-kafka-logger"
  deployment_group_name = "qr-kafka-logger-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-limit-check-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-limit-check"
  deployment_group_name = "qr-limit-check-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-merchant-notification-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-merchant-notification"
  deployment_group_name = "qr-merchant-notification-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-payment-status-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-payment-status"
  deployment_group_name = "qr-payment-status-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-payment-verification-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-payment-verification"
  deployment_group_name = "qr-payment-verification-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-ref-generator-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-ref-generator"
  deployment_group_name = "qr-ref-generator-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-transaction-control-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-transaction-control"
  deployment_group_name = "qr-transaction-control-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-transaction-history-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-transaction-history"
  deployment_group_name = "qr-transaction-history-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}

module "qr-transaction-total-codedeploy" {
  source              = "../../modules/code_deploy/deployment_group"
  application_name    = "qr-transaction-total"
  deployment_group_name = "qr-transaction-total-deployment-group"
  service_role_arn      = module.deployment-role.service_role_arn
  tags = {
    Name        = "ec2-Name"
    InstanceId  = "instanceId"
    Environment = "development"
  }
}



