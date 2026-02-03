resource "aws_iam_policy" "new_policy" {
    name    =   "${var.KKE_iampolicy}"
    policy  =   jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Action = [
                    "ec2:Describe*",
                ],
                Effect = "Allow"
                Resource = "*"
            }
        ]
    })
}

# Documentation Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy
# Command Validation: aws iam list-policies --query 'Policies[?starts_with(PolicyName,`iampolicy_kirst`)]'