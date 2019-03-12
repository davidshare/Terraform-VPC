
resource "aws_subnet" "selene_front_subnet" {
  vpc_id = "${aws_vpc.selene_vpc.id}"
  cidr_block = "${var.pub_sub_cidr}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.pub_sub_availability}"
  tags {
    Name = "${var.pub_sub_tag}"
  }
}

