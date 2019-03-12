# Define the security group for public subnet
resource "aws_security_group" "public_sg" {
  name = "${var.public_sg_name}"
  description = "Create security group for the public subnet"

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
