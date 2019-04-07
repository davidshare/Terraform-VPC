# Public security group variables
variable "public_sg_name" {
	description = "the name of the public security group",
	default = "selene_front_sg"
}

# Resource variables
variable "public_gw" {
	description = "name for public gateway"
	default ="selene_front_gw"
}

variable "public_rt" {
	description = "name for public router"
	default ="selene_front_rt"
}

variable "public_instance" {
	description = "Instance for public instance"
	default = "t2.micro"
}

variable "keypair" {
	description = "Keypair for accessing account"
	default = "eu-west-1-key"
}

variable "private_rt" {
	description= "Private route table"
	default = "selene_db_rt"
}

variable "db_sg_name" {
	description = "Security group for database instance"
	default ="selene_db_sg"
}

variable "nat_sg_name" {
	description = "Security group for the nat instance"
	default = "selene_nat_sg"
}

variable "private_rt_name" {
	description = "route table for private subnetsß"
	default = "selene_private_rt"
}
