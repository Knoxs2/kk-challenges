resource "aws_secretsmanager_secret_version" "devops_secret_value" {
  secret_id = aws_secretsmanager_secret.devops_secret.id

  secret_string = jsonencode({
    username = "xxxxxx"
    password = "xxxxxx"
  })
}

# Documentation Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version
# Command Validation: aws secretsmanager list-secrets