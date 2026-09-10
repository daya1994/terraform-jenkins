terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1d"
}

# Create a VPC
resource "aws_instance" "web_server" {
  ami           = "ami-0332d564d76dbd8d6" # Replace with the desired AMI ID
  instance_type = "t3.micro"
  tags = {
    Name = "tomcat-servers"
  }
}
