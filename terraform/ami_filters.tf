data "aws_ami" "selene_front_ami" {
	most_recent = true
	executable_users = ["self"]
	filter {
		name = "name"
		values = ["selene_front_ami"]
	}
	owners = ["self"]
}
data "aws_ami" "selene_back_ami" {
	most_recent = true
	executable_users = ["self"]
	filter {
		name = "name"
		values = ["selene_back_ami"]
	}
	owners = ["self"]
}

data "aws_ami" "selene_db_ami" {
	most_recent = true
	executable_users = ["self"]
	filter {
		name = "name"
		values = ["selene_db_ami"]
	}
	owners = ["self"]
}
