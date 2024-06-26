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
  description = "The ARN of an existing IAM role for CodeDeploy"
  type        = string
}

variable "tags" {
  description = "A map of tags to identify target resource"
  type        = map(string)
  default     = {}
}

variable "alarms" {
  description = "A list of CloudWatch alarms associated with the deployment group"
  type        = list(string)
  default     = []
}