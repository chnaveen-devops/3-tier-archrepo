resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-demo-bucket"
}

resource "aws_s3_bucket_versioning" "example_bucket_versioning" {
  bucket = aws_s3_bucket.example_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
