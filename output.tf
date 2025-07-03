output "public_ip" {
  description = "Web server public IP"
  value       = aws_instance.web.public_ip
}

output "public_dns" {
  description = "Web server public DNS"
  value       = aws_instance.web.public_dns
}

output "bucket" {
  description = "Backup bucket"
  value       = aws_s3_bucket.app_backup.id
}
