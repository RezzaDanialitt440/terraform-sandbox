# Development Main Configuration
module "key_pair" {
  source   = "../../modules/key_pair"
  key_name = "poc-app-keypair"
}

module "asg" {
  source           = "../../modules/asg"
  project_name     = "poc-app"
  environment      = "dev"
  ami_id           = "ami-0bb84b8ffd87024d8"
  instance_type    = "t3.micro"
  key_name         = module.key_pair.key_name
  security_groups  = ["sg-0313d8ec311c85d71"]
  min_size         = 1
  max_size         = 5
  desired_capacity = 2
  subnets          = ["subnet-063ccd7796c26e6a6", "subnet-0a14a8407ecc5dc25"]
}