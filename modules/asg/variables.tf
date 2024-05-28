# ASG Module Variables
variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the ASG"
  type        = string
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "security_groups" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "min_size" {
  description = "Minimum size of the ASG"
  type        = number
}

variable "max_size" {
  description = "Maximum size of the ASG"
  type        = number
}

variable "desired_capacity" {
  description = "Desired capacity of the ASG"
  type        = number
}

variable "subnets" {
  description = "List of subnet IDs for the ASG"
  type        = list(string)
}
