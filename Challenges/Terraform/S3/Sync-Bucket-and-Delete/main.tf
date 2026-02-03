resource "null_resource" "delete_bucket" {
    provisioner "local-exec" {
        command = <<EOT
        mkdir -p /opt/s3-backup
        aws s3 sync s3://nautilus-bck-23172 /opt/s3-backup
        aws s3 rm s3://nautilus-bck-23172 --recursive
        aws s3api delete-bucket --bucket nautilus-bck-23172
        EOT
    }
}

# Documentation reference: https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource
# Provisioners: https://developer.hashicorp.com/terraform/language/provisioners
# Command Validation: aws s3 ls