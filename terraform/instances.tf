# Define webserver inside the public subnet
resource "aws_instance" "frontend" {
   ami  = "${var.frontend_ami}"
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
   ami  = "${var.backend_ami}"
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
