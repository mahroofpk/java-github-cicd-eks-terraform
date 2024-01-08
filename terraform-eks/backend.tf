terraform {
  backend "s3" {
    bucket = "eks-demo-tfstate-bucket"
    key    = "eks/terraform.tfstate"
    region = "us-west-1"
  }
}