variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "key_name" {
  description = "Existing EC2 key pair name in AWS"
  type        = string
}

variable "ssh_user" {
  description = "SSH user for Ubuntu AMI"
  type        = string
  default     = "ubuntu"
}

variable "ssh_private_key" {
  description = "Path to private key on your local machine"
  type        = string
  default     = "~/.ssh/latestkey.pem"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
