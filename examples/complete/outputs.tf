output "module_vpc_id" {

        description = "The ID of the VPC"
        value = module.<module name>.vpc_id
        # providing the output for the vpc_id
}

output "module_public_subnets" {

        description = "The ID and Availability Zone of the Public Subnets"
        value = module.<module name>.public_subnets
}

output "module_private_subnets" {

        description = "The ID and Availability Zone of the private Subnets"
        value = module.<module name>.private_subnets
}