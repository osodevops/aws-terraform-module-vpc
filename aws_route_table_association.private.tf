resource "aws_route_table_association" "private" {
  count          = length(var.zone)
  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = element(aws_route_table.private.*.id, count.index)
}
