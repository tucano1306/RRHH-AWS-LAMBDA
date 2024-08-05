output "s3_bucket_name" {
  description = "The name of the S3 bucket."
  value       = aws_s3_bucket.reports_bucket.bucket
}

output "dynamodb_table_name" {
  description = "The name of the DynamoDB table."
  value       = aws_dynamodb_table.requests_table.name
}

output "lambda_function_name" {
  description = "The name of the Lambda function."
  value       = aws_lambda_function.hr_lambda.function_name
}

output "cloudwatch_event_rule_name" {
  description = "The name of the CloudWatch Event Rule."
  value       = aws_cloudwatch_event_rule.schedule_rule.name
}














