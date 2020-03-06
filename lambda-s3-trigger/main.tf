provider "aws" {
  version                 = "~> 2.0"
  region                  = "us-east-1"
  shared_credentials_file = "/Users/thoms_mac/.aws/credentials"
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"
  assume_role_policy = data.aws_iam_policy_document.iam_for_lambda_policy_document.json
}

resource "aws_lambda_function" "test_lambda" {
  filename      = "src/lambda_s3_trigger.zip"
  function_name = "lambda_s3_trigger"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "index.handler"
  runtime       = "ruby2.7"
}
