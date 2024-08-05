variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-west-2"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "el_webo"
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_handler" {
  description = "The handler for the Lambda function"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function"
  type        = string
  default     = "python3.8"
}

variable "cloudwatch_event_rule_name" {
  description = "The name of the CloudWatch event rule"
  type        = string
  default     = "hr_lambda_schedule_rule"
}

variable "cloudwatch_schedule_expression" {
  description = "The schedule expression for the CloudWatch event rule"
  type        = string
  default     = "rate(5 minutes)"
}



































 
