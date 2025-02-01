variable "aws_region" {
  default = "us-east-1"
}

variable "app_name" {
  default = "ECSPROJECT_AWS"
}

variable "github_org" {
  description = "GitHub organization/user"
}

variable "github_token" {
  description = "GitHub OAuth token"
  sensitive   = true
}