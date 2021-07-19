resource "aws_s3_bucket" "financials" {
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  versioning {
    enabled = true
  }
  # lala
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  
  bucket        = "${local.resource_prefix.value}-financials"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-financials"
    Environment = local.resource_prefix.value
  }
}
