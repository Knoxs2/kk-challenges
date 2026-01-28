resource "aws_iam_user" "new_user" {
    name    =    "iamuser_ammar"
}


# Able to validate with a CLI command -> aws iam list-users