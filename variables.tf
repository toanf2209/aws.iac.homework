variable "aws_profile" {
  description = "Name of AWS CLI profile to use (leave empty for default)"
  type        = string
}

variable "region" {
  description = "AWS region to deploy"
  type        = string
  default     = "ap-southeast-1"
}

variable "project" {
  description = "Prefix for resource names & tags"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_pair_name" {
  description = "Existing AWS key pair for SSH"
  type        = string
}

variable "my_ip" {
  description = "Your public IP CIDR to allow SSH (e.g. 203.0.113.10/32)"
  type        = string
}

variable "bucket_name" {
  description = "Globally‑unique S3 bucket name"
  type        = string
}
