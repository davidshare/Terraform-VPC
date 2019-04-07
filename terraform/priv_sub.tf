variable "priv_sub_cidr" {
	description = "cidr for the public subnet2"
	default = "10.0.3.0/24"
}

variable "priv_sub_tag" {
	description = "the tag for the private subnet"
	default ="selene_db"
}

variable "priv_sub_availability" {
	description = "the availability zone for the private subnet"
	default = "eu-west-1c"
}
