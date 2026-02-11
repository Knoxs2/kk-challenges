GID=$(aws iam create-group --group-name iamgroup_mark --query Group.GroupId)



# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/iam/create-group.html
# Command validation: aws iam list-groups --query "Groups[?GroupName=='iamgroup_mark']"