resource "aws_vpc_endpoint" "ec2" {
  vpc_id            = "${aws_vpc.main.id}"
  service_name      = "com.amazonaws.${data.aws_region.current.name}.ec2"
  vpc_endpoint_type = "Interface"
  subnet_ids        = ["${aws_subnet.private.*.id}"]

  security_group_ids = [
    "${aws_security_group.vpc_endpoints.id}",
  ]

  private_dns_enabled = true
}

resource "aws_vpc_endpoint" "ec2messages" {
  vpc_id            = "${aws_vpc.main.id}"
  service_name      = "com.amazonaws.${data.aws_region.current.name}.ec2messages"
  vpc_endpoint_type = "Interface"
  subnet_ids        = ["${aws_subnet.private.*.id}"]

  security_group_ids = [
    "${aws_security_group.vpc_endpoints.id}",
  ]

  private_dns_enabled = true
}
