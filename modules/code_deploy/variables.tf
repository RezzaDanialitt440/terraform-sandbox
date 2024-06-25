variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-west-2"
}

variable "application_name" {
  description = "The name of the CodeDeploy application"
  type        = string
  default     = "qrpush"
}

variable "deployment_group_name" {
  description = "The name of the CodeDeploy deployment group"
  type        = string
  default     = "qrpush-deployment-group"
}

variable "service_role_arn" {
  description = "The ARN of the IAM role for CodeDeplo y #IF USING EXISTING ROLE"
  type        = string
}

variable "service_role_name" {
  description = "The name of the IAM role for CodeDeploy"
  type        = string
  default     = "CodeDeployServiceRole"
}

variable "ec2_tag_key" {
  description = "The key of the tag to identify EC2 instances"
  type        = string
}

variable "ec2_tag_value" {
  description = "The value of the tag to identify EC2 instances"
  type        = string
}

variable "alarms" {
  description = "A list of CloudWatch alarms associated with the deployment group"
  type        = list(string)
  default     = []
}