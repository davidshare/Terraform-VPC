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
	default = "eu-west-1"
}
