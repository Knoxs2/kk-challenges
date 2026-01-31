resource "aws_cloudwatch_log_stream" "xfusion-log-stream" {
    name    =   "xfusion-log-stream"
    log_group_name = aws_cloudwatch_log_group.xfusion-log-group.name
}

# Documentation reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream
# Command validation: aws logs list-log-group