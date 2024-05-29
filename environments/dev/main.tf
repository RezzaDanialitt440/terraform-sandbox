# Development Main Configuration
module "asg" {
  source           = "../../modules/asg"
  project_name     = "poc-app"
  environment      = "dev"
  ami_id           = "ami-0bb84b8ffd87024d8"
  instance_type    = "t3.micro"
  key_name         = "my-key-pair"
  security_groups  = ["sg-018c32a5faca09d62"]
  min_size         = 1
  max_size         = 5
  desired_capacity = 2
  subnets          = ["subnet-0ca9476ba3af45be8", "subnet-01ce22db6dc6dd9f3"]
}