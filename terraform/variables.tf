# vpc variables
variable "vpc_tag" {
	description = "The tag for the vpc"
	default = "selene_vpc"
}

variable "vpc_cidr" {
	description = "The cidr block for the vpc"
	default = "10.0.0.0/16"
}

variable "vpc_region" {
	description = "the region of the vpc"
	default = "us-east-2"
}

# Subnet variables
variable "pub_sub_cidr" {
	description = "cidr for the public subnet"
	default = "10.0.1.0/24"
}

variable "pub_sub_tag" {
	description = "the tag for the public subnet"
	default ="selene_front"
}

variable "pub_sub_availability" {
	description = "the availability zone for the public subnet"
	default = "us-east-2a"
}

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

# # Instance variables
# variable "public_ami" {
# 	description = "Image for public instance"
# 	default = "ami-0653e888ec96eab9b"
# }

variable "public_instance" {
	description = "Instance for public instance"
	default = "t2.micro"
}

variable "keypair" {
	description = "Keypair for accessing account"
	default = "packer"
}
