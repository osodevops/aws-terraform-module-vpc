resource "aws_eip" "nateip" {
  count = 3
  vpc   = true
  tags  = var.common_tags
}

