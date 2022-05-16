resource "aws_route_table" "private" {
  count  = length(var.zone)
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.common_tags,
    {
      "Type" = "PrivateRouteTable"
    },
    {
      "Name" = "${var.account_name}-Private-${element(aws_subnet.private.*.id, count.index)}"
    },
  )
}

resource "aws_route" "private" {
  count                  = length(var.zone)
  route_table_id         = element(aws_route_table.private.*.id, count.index)
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = element(aws_nat_gateway.natgateway.*.id, count.index)
}