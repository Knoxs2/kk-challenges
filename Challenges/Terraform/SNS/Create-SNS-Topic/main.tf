resource "aws_sns_topic" "nautilus_notifications" {
    name    =   "nautilus-notifications"
}

# Documentation Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic
# Validation Command: aws sns list-topics