# Define the security group for public subnet
resource "aws_security_group" "public_sg" {
  name = "${var.public_sg_name}"
  description = "Create security group for the public subnets"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

  vpc_id="${aws_vpc.selene_vpc.id}"

  tags {
    Name = "${var.public_sg_name}"
  }
}

# the security group for the DB Instance that will be created
resource "aws_security_group" "selene_db_sg" {
  name        = "${var.db_sg_name}"
  description = "Security group for the Database Instance"

  ingress {
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  vpc_id = "${aws_vpc.selene_vpc.id}"

  tags = {
    Name = "${var.db_sg_name}"
  }
}


resource "aws_security_group" "selene_nat_sg" {
  name        = "${var.nat_sg_name}"
  description = "Security group for the NAT instance"

  #PostgreSQL Server
  # inbound traffic
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound traffic
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = "${aws_vpc.selene_vpc.id}"

  tags = {
    Name = "${var.nat_sg_name}"
  }
}
