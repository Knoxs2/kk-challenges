resource "aws_security_group" "datacenter-sg" {
    name = "${var.KKE_sg}"
}

# Documentation Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group
# Command validation: aws ec2 describe-security-groups