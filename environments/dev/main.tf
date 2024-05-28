# Development Main Configuration
module "asg" {
  source            = "../../modules/asg"
  environment       = "dev"
  ami_id            = "ami-0bb84b8ffd87024d8"
  instance_type     = "t3.micro"
  key_name          = "my-key-pair"
  security_groups   = ["sg-058f15ffafcd112d7"]
  min_size          = 1
  max_size          = 5
  desired_capacity  = 2
  subnets           = ["subnet-0926be944af0fe9a6", "subnet-0233f9359f8b25207"]
}