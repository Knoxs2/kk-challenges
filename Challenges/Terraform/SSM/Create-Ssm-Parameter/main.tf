resource "aws_ssm_parameter" "nautilus-ssm-parameter" {
    name    =   "nautilus-ssm-parameter"
    type    =   "String"
    value   =   "nautilus-value"
}


# Documentation Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter
# Command Validation: aws ssm describe-parameters