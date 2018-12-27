resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = "${aws_vpc.main.id}"

  tags = "${merge(var.common_tags,
   map("transitvpc:spoke", "true"),
   map("Name" , "${var.account_name}-VGW"))}"
}
