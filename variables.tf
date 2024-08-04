variable "aws_region" {
  description = "The AWS region to deploy resources in."
  default     = "us-west-2"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to store reports."
  default     = "hr-reports-bucket"
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for requests."
  default     = "HRRequests"
}

variable "lambda_function_name" {
  description = "The name of the Lambda function."
  default     = "HRLambdaFunction"
}

variable "lambda_handler" {
  description = "The handler for the Lambda function."
  default     = "index.handler"
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function."
  default     = "python3.8"
}

variable "lambda_filename" {
  description = "The filename of the Lambda deployment package."
  default     = "lambda_function.zip"
}

variable "cloudwatch_event_rule_name" {
  description = "The name of the CloudWatch Event Rule."
  default     = "HRLambdaScheduleRule"
}

variable "cloudwatch_schedule_expression" {
  description = "The schedule expression for the CloudWatch Event Rule."
  default     = "rate(1 day)"
}