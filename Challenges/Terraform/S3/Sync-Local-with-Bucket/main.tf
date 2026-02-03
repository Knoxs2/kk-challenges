resource "aws_s3_bucket" "my_bucket" {
  bucket = "datacenter-cp-5622"
  acl    = "private"

  tags = {
    Name        = "datacenter-cp-5622"
  }
}

resource "null_resource" "copy_to_bucket" {
  provisioner "local-exec" {
    interpreter = ["/bin/bash", "-c"]
    command = <<EOT
      aws s3 cp /tmp/datacenter.txt s3://datacenter-cp-5622
    EOT
  }
}