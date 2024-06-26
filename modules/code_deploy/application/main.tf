provider "aws" {
  # The region is not specified to support AWS Outposts
}

resource "aws_codedeploy_app" "this" {
  name = var.application_name
}