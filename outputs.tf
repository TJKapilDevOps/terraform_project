
output "instance_id" {
  value = aws_instance.dev_instance.id
}

output "bucket_name" { 
  value = aws_s3_bucket.dev_bucket.bucket
}


