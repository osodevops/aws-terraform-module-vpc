resource "aws_vpc_endpoint" "cloudwatch_logs" {
  count             = var.vpc_endpoint_cloudwatch_enabled
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.logs"
  vpc_endpoint_type = "Interface"
  subnet_ids        = aws_subnet.private.*.id

  security_group_ids = [
    aws_security_group.vpc_endpoints.id,
  ]

  private_dns_enabled = true
}
