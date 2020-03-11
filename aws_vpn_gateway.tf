resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.common_tags,
    {
      "transitvpc:spoke" = "true"
    },
    {
      "Name" = "${var.account_name}-VGW"
    },
  )
}

