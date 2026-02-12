aws iam create-policy --policy-name iampolicy_anita --policy-document file://policy.json

# Documentation reference: Grammar - https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html
# Command Validation: 


# How create a policy json
# {
# first: 'Version':'2012-10-17'
# second: "Statement": []
# third: "Effect": "Allow" | "Deny"
# fourth: "Action": "service:ActionName" | ["service:Action1", "service:Action2"] // ec2:StartInstances, ec2:DescribeInstances, s3:GetObject, iam:CreateROle
# fifth: "Resource": "arn:..." | "*" // arn:partition:service:region:account-id:resource // arn:aws:ec2:us-east-1:123456789012:instance/i-123abc
# sixth: "Condition": {} Operator: {"Key": "Value"} "Condition": { "IpAddress": {"aws:SourceIp": "1.2.3.4/32"}}
# }