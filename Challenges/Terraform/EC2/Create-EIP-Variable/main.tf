    resource "aws_eip" "xfusion-eip" {
    tags = {
        Name = "${var.KKE_eip}"
    }
}

# Documentation reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip
# Command validation: aws ec2 describe-addresses
