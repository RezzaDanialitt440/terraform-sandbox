terraform {
  backend "s3" {
    bucket         = "rezza-remote-backend"
    key            = "dev/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "rezza-tfstate-locking"
    encrypt        = true
  }
}