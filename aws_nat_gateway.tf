resource "aws_nat_gateway" "natgateway" {
  count         = length(var.zone)
  allocation_id = element(aws_eip.nateip.*.id, count.index)
  subnet_id     = element(aws_subnet.public.*.id, count.index)

  tags = {
    Name = "${var.account_name}-AZ${count.index + 1}"
  }
}

