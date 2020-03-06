data "aws_iam_policy_document" "iam_for_lambda_policy_document" {
  version = "2012-10-17"

  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}
