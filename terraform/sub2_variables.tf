# Subnet 2 variables
variable "pub_sub2_cidr" {
	description = "cidr for the public subnet2"
	default = "10.0.2.0/24"
}

variable "pub_sub2_tag" {
	description = "the tag for the public subnet2"
	default ="selene_back"
}

variable "pub_sub_availability" {
	description = "the availability zone for the public subnet2"
	default = "eu-west-1b"
}
