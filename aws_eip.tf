resource "aws_eip" "nateip" {
  count = length(var.zone)
  vpc   = true
  tags  = var.common_tags
}

