resource "aws_s3_bucket" "financials" {
  versioning {
    enabled = true
  }
  # lala
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  
  bucket        = "${local.resource_prefix.value}-financials"
  acl           = "private"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-financials"
    Environment = local.resource_prefix.value
  }
}
