resource "aws_route53_zone" "private" {
  name    = "${lower(var.environment)}-${lower(data.aws_iam_account_alias.current.account_alias)}.cloud."
  comment = "Managed by Terraform"

  vpc {
    vpc_id     = "${aws_vpc.main.id}"
    vpc_region = "${data.aws_region.current.name}"
  }

  lifecycle {
    ignore_changes = ["vpc"]
  }

  tags = "${var.common_tags}"
}
