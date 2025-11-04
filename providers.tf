terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.19.0"
    }
  }
}

provider "aws" {
  # Configuration options
  # region locatiin info

  region = "ap-southeast-2"
}

#creating ev2 vm

resource "aws_instance" "arpit-devops" {

    ami = "ami-0a25a306450a2cba3"
    instance_type = "t2.nano"
    key_name = "roche-key"

    tags = {
      Name = "arpit-devops"
    }
}