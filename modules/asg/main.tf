# ASG Module Configuration
# resource "aws_launch_configuration" "app" {
#   name          = "app-launch-configuration-${var.environment}"
#   image_id      = var.ami_id
#   instance_type = var.instance_type
#   key_name      = var.key_name

#   security_groups = var.security_groups

#   lifecycle {
#     create_before_destroy = true
#   }
# }

resource "aws_launch_template" "app" {
  name_prefix   = "app-launch-template-${var.environment}"
  image_id      = var.ami_id
  instance_type = var.instance_type
  
  vpc_security_group_ids = var.security_groups
  
  monitoring {
    enabled = true
  }
  
    lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "app" {
  min_size             = var.min_size
  max_size             = var.max_size
  desired_capacity     = var.desired_capacity
  vpc_zone_identifier  = var.subnets
  
  launch_template {
    id      = aws_launch_template.app.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "app-instance-${var.environment}"
    propagate_at_launch = true
  }
}