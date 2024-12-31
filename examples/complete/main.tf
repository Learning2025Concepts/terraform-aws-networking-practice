module "networking" {

  source = "path/to/module"
  # define the source module as modules/networking in this case

  vpc_config = {

    cidr_block = "10.0.0.0/16"
    # define the value for the cidr_blocks in this case

    name = "main"
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