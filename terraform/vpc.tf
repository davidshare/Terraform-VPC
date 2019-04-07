resource "aws_vpc" "selene_vpc" {
  cidr_block = "${var.vpc_cidr}"
	enable_dns_hostnames = true
  enable_dns_support = true
  tags {
    Name = "${var.vpc_tag}"
  }
}
