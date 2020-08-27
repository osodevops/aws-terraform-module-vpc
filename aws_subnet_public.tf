resource "aws_subnet" "public" {
  count             = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.public_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  tags = merge(
    var.common_tags,
    {
      "Type" = "PublicSubnet${var.zone[count.index]}"
    },
    {
      "Zone" = "Public"
    },
    {
      "Name" = "${var.account_name}-Public-${var.zone[count.index]}"
    },
  )
}

