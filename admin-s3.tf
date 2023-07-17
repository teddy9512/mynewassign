# S3 bucket for admin site.
resource "aws_s3_bucket" "admin_bucket" {
  bucket = "${var.env}-${var.s3_admin_bucket_name}"
  acl    = "public-read"
#  policy = data.aws_iam_policy_document.allow_public_s3_read.json

  cors_rule {
    allowed_headers = ["Authorization", "Content-Length"]
    allowed_methods = ["GET", "POST"]
    allowed_origins = ["https://${var.admin_domain_name}"]
    max_age_seconds = 3000
  }

  website {
    index_document = "index.html"
    error_document = "404.html"
  }

  tags = var.common_tags
}

