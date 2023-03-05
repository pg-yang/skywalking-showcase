# https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws/latest
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "skywalking-showcase-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = false
  }

  tags = {
    Environment = "skywalking-showcase"
    Terraform   = "true"
  }
}