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


