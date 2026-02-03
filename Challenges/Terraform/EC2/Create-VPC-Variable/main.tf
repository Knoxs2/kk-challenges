resource "aws_vpc" "datacenter_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "${var.KKE_vpc}"
    }
}

# Documentation Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
# Command Validation:  aws ec2 describe-vpcs