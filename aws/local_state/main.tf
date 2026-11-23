terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09f6e62a9fe578f92"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

