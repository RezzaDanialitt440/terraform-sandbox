# ASG Module Configuration
resource "aws_launch_configuration" "app" {
  name          = "app-launch-configuration-${var.environment}"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = var.security_groups

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "app" {
  launch_configuration = aws_launch_configuration.app.id
  min_size             = var.min_size
  max_size             = var.max_size
  desired_capacity     = var.desired_capacity
  vpc_zone_identifier  = var.subnets

  tag {
    key                 = "Name"
    value               = "app-instance-${var.environment}"
    propagate_at_launch = true
  }
}