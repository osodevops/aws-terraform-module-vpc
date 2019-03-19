data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "vpc_endpoints" {
  statement {
    principals { 
        type = "AWS", 
        # identifiers = [ "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root" ]
        identifiers = [ "*" ]
    }

    actions   = ["*"]
    resources = ["*"]
  }
}

