# Define SSH key pair for our instances
# resource "aws_key_pair" "default" {
#   key_name = "packer"
#   public_key = "${file("${var.keypair_path}")}"
# }

 # Define the internet gateway
resource "aws_internet_gateway" "public_gw" {
  vpc_id = "${aws_vpc.selene_vpc.id}"

  tags {
    Name = "${var.public_gw}"
  }
}

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

resource "aws_route_table_association" "selene_rt_assign" {
  subnet_id = "${aws_subnet.selene_front_subnet.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}
