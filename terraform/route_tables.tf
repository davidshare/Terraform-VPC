# Define the routes table
resource "aws_route_table" "public_rt" {
  vpc_id = "${aws_vpc.selene_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.public_gw.id}"
  }

  tags {
    Name = "${var.public_rt}"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = "${aws_vpc.selene_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    instance_id = "${aws_instance.selene_nat.id}"
  }

  tags {
    Name = "${var.private_rt_name}"
  }

  # this depends on the creation of the NAT instance
  depends_on = ["aws_instance.selene_nat"]
}
