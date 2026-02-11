IAMID=$(aws iam create-user --user-name iamuser_ravi --query User.UserId)

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/iam/create-user.html
# Command validation: aws iam list-users --query "Users[?UserName=='iamuser_ravi']"