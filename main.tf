terraform {
  backend "s3" {
    bucket         = "jawad-tfstate-032-blink"  # Replace with your S3 bucket name
    key            = "blink/terraform.tfstate"  # The path within the bucket to store the state file
    region         = "us-west-2"  # Replace with your desired AWS region
    
  }
}

provider "aws" {
  region = "us-west-2"  # Replace with your desired AWS region
}
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "main-vpc"
  }
}