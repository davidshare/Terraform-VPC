resource "aws_route_table_association" "selene_front_rt_assign" {
  subnet_id = "${aws_subnet.selene_front_subnet.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}

resource "aws_route_table_association" "selene_back_rt_assign" {
  subnet_id = "${aws_subnet.selene_back_subnet.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}

resource "aws_route_table_association" "selene_db_rt_assign" {
  subnet_id = "${aws_subnet.selene_db_subnet.id}"
  route_table_id = "${aws_route_table.private_rt.id}"
}
