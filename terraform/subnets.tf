
resource "aws_subnet" "selene_front_subnet" {
  vpc_id = "${aws_vpc.selene_vpc.id}"
  cidr_block = "${var.pub_sub_cidr}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.pub_sub_availability}"
  tags {
    Name = "${var.pub_sub_tag}"
  }
}

resource "aws_subnet" "selene_back_subnet" {
  vpc_id = "${aws_vpc.selene_vpc.id}"
  cidr_block = "${var.pub_sub2_cidr}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.pub_sub2_availability}"
  tags {
    Name = "${var.pub_sub2_tag}"
  }
}

resource "aws_subnet" "selene_db_subnet" {
  vpc_id = "${aws_vpc.selene_vpc.id}"
	cidr_block = "${var.priv_sub_cidr}"
  map_public_ip_on_launch = "false"
  availability_zone = "${var.priv_sub_availability}"
  tags {
    Name = "${var.priv_sub_tag}"
  }
}
