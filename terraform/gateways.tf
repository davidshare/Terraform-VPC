 # Define the internet gateway
resource "aws_internet_gateway" "public_gw" {
  vpc_id = "${aws_vpc.selene_vpc.id}"

  tags {
    Name = "${var.public_gw}"
  }
}


resource "aws_eip" "selene_nat_ip" {
  vpc = true
}

resource "aws_nat_gateway" "selene_nat_gateway" {
  allocation_id = "${aws_eip.selene_nat_ip.id}"
  subnet_id     = "${aws_subnet.selene_db_subnet.id}"
}


