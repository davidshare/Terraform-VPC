resource "aws_vpc" "selene_vpc" {
  cidr_block = "${var.vpc_cidr}"
  tags {
    Name = "${var.vpc_tag}"
  }
}
