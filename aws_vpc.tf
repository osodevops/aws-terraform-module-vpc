resource "aws_vpc" "main" {
  cidr_block           = var.cidr
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    var.common_tags,
    var.additional_vpc_tags,
    {
      "Type" = "VPC"
    },
    {
      "Name" = var.account_name
    }
  )
}
