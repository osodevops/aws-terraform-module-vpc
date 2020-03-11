resource "aws_security_group" "vpc_endpoints" {
  name        = "${var.account_name}-VPC-ENDPOINTS-SG"
  description = "Managed by Terraform"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = [var.cidr]
  }

  tags = merge(
    var.common_tags,
    {
      "Name" = "${var.account_name}-VPC-ENDPOINTS-SG"
    },
  )
}

