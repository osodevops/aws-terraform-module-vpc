resource "aws_route53_zone" "private" {
  name    = "${var.internal_dns_zone}."
  comment = "Managed by Terraform"

  vpc {
    vpc_id     = aws_vpc.main.id
    vpc_region = data.aws_region.current.name
  }

  lifecycle {
    ignore_changes = [vpc]
  }

  tags = var.common_tags
}

