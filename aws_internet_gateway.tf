resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"

  tags = "${merge(var.common_tags,
  map("Name", "${var.account_name}-IGW"))}"
}
