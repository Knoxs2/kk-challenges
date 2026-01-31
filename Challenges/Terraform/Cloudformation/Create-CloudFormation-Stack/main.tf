resource "aws_cloudformation_stack" "datacenter_stack" {
  name = "datacenter-stack"

  template_body = <<EOF
AWSTemplateFormatVersion: '2010-09-09'
Description: CloudFormation stack to create an S3 bucket with versioning enabled

Resources:
  DatacenterBucket:
    Type: AWS::S3::Bucket
    Properties:
      BucketName: datacenter-bucket-26821
      VersioningConfiguration:
        Status: Enabled
EOF
}

# Documentation reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack.html
# Command Validation: aws cloudformation list-stacks
# Errors encountered: using encodeJson and using json format is returning duplication resource creation, only worked using yaml formation with <<<EOF EOF