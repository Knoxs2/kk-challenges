resource "aws_dynamodb_table" "nautilus-users" {
  name             = "nautilus-users"
  hash_key         = "nautilus_id"
  billing_mode     = "PAY_PER_REQUEST"

  attribute {
    name = "nautilus_id"
    type = "S"
  }

}


# Documentation reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table
# command to validate: aws dynamodb list-tables