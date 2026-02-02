resource "aws_secretsmanager_secret" "devops_secret" {
  name = "devops-secret"
}

# Documentation reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret
# Command validation: aws secretsmanager list-secrets