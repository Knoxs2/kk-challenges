resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd" example ami
  instance_type = "t2.nano"
  subnet_id     = ""

  tags = {
    Name = "datacenter-ec2"
  }
}


# Documentation reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# Command Validation: aws ec2 describe-instances
