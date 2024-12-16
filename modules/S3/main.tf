variable "environment" {
    type = string
    description = "O ambiente para o qual o bucket será criado (dev, staging, prod)"
}


resource "aws_s3_bucket" "s3_bucket" {
    bucket = "${var.environment}-bucket-vinic"

    tags = {
      Environment = var.environment
    }
  
}

resource "aws_s3_bucket_versioning" "s3_versioning" {
    bucket  = aws_s3_bucket.s3_bucket.id
    versioning_configuration {
      status = "Enabled"
    }
}


