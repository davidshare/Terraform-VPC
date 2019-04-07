
# Subnet1 variables
variable "pub_sub_cidr" {
	description = "cidr for the public subnet"
	default = "10.0.1.0/24"
}

variable "pub_sub_tag" {
	description = "the tag for the public subnet"
	default ="selene_front"
}

variable "pub_sub2_availability" {
	description = "the availability zone for the public subnet2"
	default = "eu-west-1a"
}
