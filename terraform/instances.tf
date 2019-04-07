# Define webserver inside the public subnet
resource "aws_instance" "frontend" {
	ami = "${data.aws_ami.selene_front_ami.id}"
   instance_type = "${var.public_instance}"
   key_name = "${var.keypair}"
   subnet_id = "${aws_subnet.selene_front_subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.public_sg.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  tags {
    Name = "selene_frontend_instance"
  }
}

# Define webserver inside the public subnet
resource "aws_instance" "backend" {
	 ami = "${data.aws_ami.selene_back_ami.id}"
   instance_type = "${var.public_instance}"
   key_name = "${var.keypair}"
   subnet_id = "${aws_subnet.selene_back_subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.public_sg.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  tags {
    Name = "selene_backend_instance"
  }
}

#  Define webserver inside the public subnet
resource "aws_instance" "selene_nat" {
	 ami = "ami-0ea87e2bfa81ca08a"
   instance_type = "${var.public_instance}"
   key_name = "${var.keypair}"
   subnet_id = "${aws_subnet.selene_front_subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.selene_nat_sg.id}"]
   associate_public_ip_address = true
   source_dest_check = false
  tags {
    Name = "selene_nat_instance"
  }
}

#  Define webserver inside the public subnet
resource "aws_instance" "selene_db" {
	 ami = "${data.aws_ami.selene_db_ami.id}"
   instance_type = "${var.public_instance}"
   key_name = "${var.keypair}"
   subnet_id = "${aws_subnet.selene_db_subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.selene_db_sg.id}"]

  tags {
    Name = "selene_db_instance"
  }
}
