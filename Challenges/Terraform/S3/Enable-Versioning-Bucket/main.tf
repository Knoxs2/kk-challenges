resource "aws_s3_bucket" "s3_ran_bucket" {
  bucket = "xxxxxxxx"
  acl    = "private"

  tags = {
    Name        = "xxxxxxx"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.s3_ran_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}


# Documentation Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning
# Command validation: aws s3api get-bucket-versioning