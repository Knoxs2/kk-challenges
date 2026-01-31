resource "aws_opensearch_domain" "xfusion-es" {
    domain_name     =   "xfusion-es"
}

# Documentation Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/opensearch_domain
# Command validation: aws opensearch list-domain-names
