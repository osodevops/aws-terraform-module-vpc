data "aws_caller_identity" "current" {
}

data "aws_iam_policy_document" "vpc_endpoints" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions   = ["*"]
    resources = ["*"]
  }
}

