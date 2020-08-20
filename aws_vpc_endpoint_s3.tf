resource "aws_vpc_endpoint" "s3" {
  count             = var.vpc_endpoint_s3_enabled
  vpc_id       = aws_vpc.main.id
  service_name = "com.amazonaws.${data.aws_region.current.name}.s3"
  route_table_ids = [
    aws_route_table.public.id,
    aws_route_table.privatea.id,
    aws_route_table.privateb.id,
    aws_route_table.privatec.id,
  ]

  # policy              = "${aws_iam_policy.vpc_endpoints.id}"
  policy = data.aws_iam_policy_document.vpc_endpoints.json
}

