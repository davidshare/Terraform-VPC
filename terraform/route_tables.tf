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

resource "aws_route_table_association" "selene_front_rt_assign" {
  subnet_id = "${aws_subnet.selene_front_subnet.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}

resource "aws_route_table_association" "selene_back_rt_assign" {
  subnet_id = "${aws_subnet.selene_front_subnet.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}


resource "aws_route_table" "private_rt" {
  vpc_id = "${aws_vpc.selene_vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.selene_nat_gateway.id}"
  }

  tags{
    Name = "${var.private_rt}"
  }
}

resource "aws_route_table_association" "selene_db_rt_assign" {
  subnet_id      = "${aws_subnet.selene_db_subnet.id}"
  route_table_id = "${aws_route_table.private_rt.id}"
}
