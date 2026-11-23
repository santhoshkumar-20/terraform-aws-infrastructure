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
  ami           = "ami-0aacbf72109c53c0c"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

