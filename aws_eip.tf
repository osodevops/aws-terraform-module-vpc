resource "aws_eip" "nateip" {
  count  = 3
  domain = var.domain
  tags   = var.common_tags
}

