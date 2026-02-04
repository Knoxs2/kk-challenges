resource "aws_s3_bucket" "devops_s3" {
    bucket = "devops-s3-4895"

}

resource "aws_s3_bucket_acl" "devops_s3_acl" {
    bucket = aws_s3_bucket.devops_s3.id
    acl = "public"
}