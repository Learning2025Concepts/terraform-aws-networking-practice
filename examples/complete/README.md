# Networking Module

Terraform Modules to Manage the AWS Networking Resource such as vpc subnet and route tables
This Module manages the `creation of vpc` and `subnets` , allowing to create both the `public` and `private` subnets

### Example Usage

```terraform

module "networking" {

  source = ""
  # define the source module as modules/networking in this case

  vpc_config = {

    cidr_block = "10.0.0.0/16"
    # define the value for the cidr_blocks in this case

    name = "<your-vpc-name>"
    # define the name args inside the object

  }

  subnet_config = {

    public = {
      cidr_block = "10.0.0.0/24"
      azs        = "us-east-1a"
      public     = true
    }
    
    private = {
      cidr_block = "10.0.100.0/24"
      azs        = "us-east-1b"
    }

  }
  
  }


```