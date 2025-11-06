terraform {

  backend "s3" {
   bucket = "arpit-terraform-state"
   key = "dev/arpit/terraform.tfstate"
   dynamodb_table = "arpit-terraform-state-table"
   region = "ap-southeast-2"
   encrypt = true

          }

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


module "arpit-module" {

    source = "./modules/ec2"
    vm-name = "arpit-devops"
    vm-size = "t2.nano"
    ec2_key_name = "arpit-private-key"
    arpit-ami-id = "ami-0a25a306450a2cba3"
    key-size = 4096
    private-key-algo = "RSA"
    my-vpc-id = "vpc-02d56e9aa1ce2f114"
    my-sec-group-name= "arpit-security-group"

  
}