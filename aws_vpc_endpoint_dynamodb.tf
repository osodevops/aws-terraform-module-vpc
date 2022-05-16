resource "aws_vpc_endpoint" "dynamodb" {
  count             = var.vpc_endpoint_dynamodb_enabled
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.dynamodb"
  vpc_endpoint_type = "Gateway"
  route_table_ids   = concat([aws_route_table.public.id], aws_route_table.private.*.id)
  policy            = data.aws_iam_policy_document.vpc_endpoints.json
}
