terraform {
  backend "s3" {
    bucket = "expressyogendra"
    key    = "TerraformECSDeploy/backend"
    region = "ap-south-1"
  }
}