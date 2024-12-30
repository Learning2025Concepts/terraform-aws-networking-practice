module "<module name>" {

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

    subnet_1 = {
      cidr_block = "10.0.1.0/24"
      azs        = "us-east-1c"
      public     =  true
    }

    private = {
      cidr_block = "10.0.100.0/24"
      azs        = "us-east-1b"
    }

  }

}