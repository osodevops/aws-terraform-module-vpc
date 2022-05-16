resource "aws_subnet" "private" {
  count             = length(var.zone)
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.private_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge(
    var.common_tags,
    var.additional_subnet_tags,
    {
      "Type" = "PrivateSubnet${var.zone[count.index]}"
    },
    {
      "Zone" = "Private"
    },
    {
      "Name" = "${var.account_name}-Private-${var.zone[count.index]}"
    }
  )
}

