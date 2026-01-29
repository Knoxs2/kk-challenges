resource "aws_kinesis_stream" "devops-stream" {
  name              = "devops-stream"
  shard_count       =  1
  retention_period  = 48
}

# Documentation reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kinesis_stream
# Validation Command: aws kinesis list-streams