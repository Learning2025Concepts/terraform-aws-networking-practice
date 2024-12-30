# using the terraform settings block for the provider info
terraform {

  required_version = "~>1.9"
  # which version of required version we want to use

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }

  }
}

# define the provider in the root module
provider "aws" {

  region  = "us-east-1"
  profile = "aws-demo"

}
