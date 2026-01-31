resource "aws_cloudwatch_log_group" "xfusion-log-group" {
    name    =   "xfusion-log-group"
}


# Documentation reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group
# command validation: aws logs describe-log-streams