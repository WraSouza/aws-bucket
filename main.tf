terraform {
    required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

backend "s3" {
  bucket = "bucket-treino-udemy-wladimir"
  key = "aws-vpc/terraform.tfstate"
  region = "us-east-1"
}

provider "aws" {
 region = "us-east-1"

 default_tags {
   tags = {
     owner = "wladimir"
     managed-by = "terraform"
   }
 }
}