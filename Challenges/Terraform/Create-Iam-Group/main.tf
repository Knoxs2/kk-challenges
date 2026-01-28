resource "aws_iam_group" "new_group" {
  name = "iamgroup_ravi"
}


# Documentation reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group
# Can validate through: aws iam list-groups