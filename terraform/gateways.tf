 # Define the internet gateway
resource "aws_internet_gateway" "public_gw" {
  vpc_id = "${aws_vpc.selene_vpc.id}"

  tags {
    Name = "${var.public_gw}"
  }
}
