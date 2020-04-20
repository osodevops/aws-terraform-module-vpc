resource "aws_route53_zone" "reverse" {
  name    = "10.in-addr.arpa"
  comment = "Reverse DNS Lookup for ${upper(var.account_name)} - Managed by Terraform"

  vpc {
    vpc_id     = aws_vpc.main.id
    vpc_region = data.aws_region.current.name
  }

  tags = var.common_tags
}

