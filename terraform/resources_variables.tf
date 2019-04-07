# Public security group variables
variable "public_sg_name" {
	description = "the name of the public security group",
	default = "selene_front_sg"
}

variable "keypair_path" {
	description = "the path to the keypair file"
	default = "../packer/packer.pem"
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

variable "frontend_ami" {
	description = "the base image for the frontend instance"
	default = "ami-08660f1c6fb6b01e7"
}

variable "backend_ami" {
	description = "the base image for the backend instance"
	default = "ami-08660f1c6fb6b01e7"
}

variable "private_rt" {
	description= "Private route table"
	default = "selene_db_rt"
}

