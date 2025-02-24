resource "aws_eip" "nateip" {
  count  = 3
  domain = true
  tags   = var.common_tags
}

