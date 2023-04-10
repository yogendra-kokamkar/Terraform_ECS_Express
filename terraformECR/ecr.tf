provider "aws" {
  region  = "ap-south-1"
}

resource "aws_ecr_repository" "express_yogendra_ecr_repo" {
  name = "express_yogendra_ecr_repo"
}