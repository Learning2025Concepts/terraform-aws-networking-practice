#variable block with the name as vpc_config which is of object type in this case
variable "vpc_config" {

  # the variable type in this case will be of type object rather than the primitive type such as string
  type = object({

    cidr_block = string
    # define the cidr_block which is of type string
    name = string
    # name of the variable vpc_config been defined here
  })

  # default = {
  #   cidr_block = "10.0.0.0/16"
  #   name = "main"
  # }

  validation {

    condition = can(cidrnetmask(var.vpc_config.cidr_block))
    # define the condition that must be satisfied for the variable block in this case
    error_message = "The config for CIDR block in vpc_config being incorrect"

  }

}


variable "subnet_config" {

  # the variable type in this case will be of type object rather than the primitive type such as string
  type = map(object({

    cidr_block = string
    # define the subnet cidr_block as the list(subnet) where each will be of type string
    azs = string
    # name of the variable azs as the list(subnet) where each will be of type string

    public = optional(bool, false)
    # define the public as the list(subnet) where each will be of type bool

  }))

  # default = {
  #
  #   public = {
  #     cidr_block = "10.0.0.0/24"
  #     azs = "us-east-1a"
  #
  #   }
  #   private = {
  #     cidr_block = "10.0.100.0/24"
  #     azs = "us-east-1a"
  #
  #   }
  # }



  validation {

    condition = alltrue([for name, details in var.subnet_config : can(cidrnetmask(details.cidr_block))])
    # define the condition that must be satisfied for the variable block in this case will be validated as item
    error_message = "The config for CIDR block in subnet_config being incorrect"
    #
  }
}